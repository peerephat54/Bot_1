# Architecture และ Data Flow

## เป้าหมายและข้อกำหนด

ระบบช่วยนักเรียนค้นหาโครงการ TCAS Portfolio และคัดกรองเงื่อนไขจากหลักฐานที่ระบุแหล่งได้ ไม่รับรองสิทธิ์สมัครแทนมหาวิทยาลัย และไม่เติมเกณฑ์หรือกำหนดการที่ไม่มีประกาศ

หลักวิศวกรรมที่ใช้:

- **Single source of truth ต่อการปล่อยข้อมูล:** JSON + source audit ถูกตรวจเป็นชุดเดียวและผูกด้วย SHA-256
- **Fail closed สำหรับการเขียน:** ถ้าหลักฐานขาด เก่า เปลี่ยน หรืออ่านไม่ได้ จะไม่ซิงก์ข้อมูลเข้าฐานข้อมูล
- **แยก freshness ออกจากสถานะสมัคร:** “ควรตรวจซ้ำ” หมายถึงวันที่ทบทวนเกิน 7 วัน ไม่ได้แปลว่าปิดรับหรือข้อมูลผิด
- **คำนวณผลอย่างตรวจสอบย้อนกลับได้:** Rule Engine ให้ผ่าน / ไม่ผ่าน / ต้องตรวจเพิ่ม / ไม่มีข้อมูล พร้อมเหตุผลและแหล่งอ้างอิง
- **ลดการเรียกซ้ำ:** `/ask` ใช้ข้อเท็จจริงใน local catalog ก่อน; เมื่อจำเป็นจึงโหลดรายการรวมครั้งเดียวแทน query ทีละสาขา และการรีเฟรชเมนูพร้อมกันจะใช้คำขอเดียว
- **เปลี่ยนข้อมูลแบบย้อนกลับได้:** การเขียนฐานข้อมูลเป็น transaction; มีการตรวจจำนวนรายการก่อน commit และบันทึก fingerprint ใน transaction เดียวกัน
- **ทนต่อความขัดข้อง:** เมื่อ Supabase ใช้ไม่ได้ให้ใช้ local catalog ที่ผ่านการตรวจ และไม่นับ fallback ว่าเป็นข้อมูลสดจากฐานข้อมูล

## Architecture Diagram

```mermaid
flowchart LR
    User[นักเรียน] --> Discord[Discord commands and views]
    Discord --> Nav[ค้นหา: มหาวิทยาลัย / วิทยาเขต / คณะ / สาขา / โครงการ]
    Nav -->|อ่าน| Supabase[(Supabase)]
    Nav -->|fallback เมื่ออ่านไม่ได้| Local[Local audited JSON]
    Supabase --> Rules[Deterministic Rule Engine]
    Local --> Rules
    Rules --> Cards[ผลตรวจ + เหตุผล + วันสำคัญ + แหล่งทางการ]
    Cards --> Discord
    Discord --> UserData[รายการโปรด / checklist / reminders]

    Official[เว็บมหาวิทยาลัยและ TCAS] --> Monitor[ตรวจ link / อายุ / hash]
    Monitor --> Review[คิวให้คนทบทวนข้อเท็จจริง]
    Review --> Gate{หลักฐานครบและผ่านหรือไม่}
    Gate -->|ไม่ผ่าน: ห้ามเขียน| Queue[รายงานรอตรวจพร้อมเหตุผล]
    Gate -->|ผ่านทั้งหมด| Importer[Importer: validate + transaction]
    Local --> Importer
    Importer --> Supabase
    Importer --> Manifest[(Dataset sync manifest)]
    Manifest --> Health["/health: เทียบ fingerprint เครื่องกับ DB"]
```

## Data Flow: ค้นหาและคัดกรอง

```mermaid
flowchart TD
    Start["คำสั่ง /start, /grade_check, /ask หรือ /tcas_search"] --> Intent[เลือกเป้าหมายและตัวกรอง]
    Intent --> Read{อ่าน Supabase ได้หรือไม่}
    Read -->|ได้| Remote[ดึงหลักสูตร โครงการ เกณฑ์ และกำหนดการ]
    Read -->|ไม่ได้| Fallback[ใช้ local catalog ที่ตรวจสอบแล้ว]
    Remote --> Context[ผูกข้อมูลกับ source และวันที่ตรวจ]
    Fallback --> Context
    Context --> Engine[Rule Engine ตรวจทีละเงื่อนไข]
    Engine --> Result{ผลตรวจ}
    Result --> Pass[ผ่าน]
    Result --> Fail[ไม่ผ่าน]
    Result --> Review[ต้องตรวจเพิ่ม]
    Result --> Missing[ไม่มีข้อมูล]
    Pass --> Card[การ์ด: สมัครได้ไหม / ปิดรับเมื่อไร / ทำอะไรต่อ]
    Fail --> Card
    Review --> Card
    Missing --> Card
    Card --> Official[เปิดประกาศทางการเพื่อตรวจซ้ำ]
    Card --> UserAction[บันทึกรายการโปรด / checklist / เตือนกำหนดการ]
```

## Data Flow: ตรวจและปล่อยข้อมูล

```mermaid
flowchart TD
    Source[เว็บและประกาศทางการ] --> Fetch[ตรวจสถานะ URL, redirect, อายุ และ hash]
    Fetch --> Evidence[ผูกประกาศกับ project / criteria / calendar]
    Evidence --> Human{คนตรวจข้อเท็จจริงและ source audit แล้วหรือยัง}
    Human -->|ไม่| Hold[needs_review: ระบุเหตุผลและห้ามนำเข้า]
    Human -->|ใช่| Validate[ตรวจ schema, ความสัมพันธ์, วันที่ และ seed SQL]
    Validate --> Gate{รายงานผ่านและ fingerprint ยังตรงหรือไม่}
    Gate -->|ไม่| Hold
    Gate -->|ใช่| Confirm[ตรวจ project ref และยืนยันโหมดนำเข้า]
    Confirm --> Tx[transaction: migration + seed + ตรวจจำนวน]
    Tx -->|ล้มเหลว| Rollback[rollback ทั้งชุด]
    Tx -->|ผ่าน| Manifest[บันทึก dataset hash, audit hash, โหมด และเวลา]
    Manifest --> Health["/health แสดง in sync / out of sync / ยังไม่มีหลักฐานซิงก์"]
```

## สถานะซิงก์ที่ผู้ดูแลเห็น

| สถานะ | ความหมาย | ขั้นตอนถัดไป |
|---|---|---|
| ยังไม่มีบันทึก | ระบบยังยืนยันไม่ได้ว่าฐานข้อมูลนำเข้าจากชุดใด | ตรวจ Supabase และนำเข้าผ่าน importer |
| เติมเฉพาะที่ขาด | เพิ่มแถวที่ไม่มี แต่คงแถวเดิมไว้ จึงยังไม่รับรองว่าเนื้อหาเดิมตรงกับเครื่อง | ตรวจหลักฐาน แล้วเลือก sync แบบ reviewed เมื่อพร้อม |
| ไม่ตรงกัน | fingerprint ในเครื่องต่างจากชุดที่ซิงก์ล่าสุด | ตรวจ source audit แล้วสร้างรายงานหลักฐานใหม่ก่อน sync |
| ตรงกัน | dataset และ source audit ตรงกับชุดล่าสุดที่นำเข้าแบบ reviewed | ติดตามวันตรวจและแหล่งข้อมูลต่อไป |

## ขอบเขตและข้อจำกัด

- ตัวตรวจอัตโนมัติยืนยัน URL, freshness, hash, รูปแบบ และความสัมพันธ์ได้ แต่ไม่เข้าใจความหมายของประกาศแทนคน
- Hash เปลี่ยนเป็นสัญญาณให้ตรวจ ไม่ใช่หลักฐานว่าเกณฑ์หรือวันสมัครเปลี่ยน
- การ sync แบบ reviewed อัปเดตเฉพาะ key ที่อยู่ในชุดข้อมูลที่ผ่าน gate; ไม่ลบข้อมูลอื่นในฐานข้อมูล
- `/health` แยกสถานะ Discord, local dataset, การเชื่อมต่อ Supabase และหลักฐานความตรงกันของข้อมูล
- บอทช่วยคัดกรองเบื้องต้น ผู้สมัครต้องตรวจประกาศฉบับเต็มและยืนยันกับมหาวิทยาลัยก่อนสมัคร
