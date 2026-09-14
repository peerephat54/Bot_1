# นำเข้าชุดข้อมูล TCAS70 ไป Supabase

ตัวนำเข้านี้ตรวจ dataset และ source audit ก่อนเชื่อมต่อ ใช้ PostgreSQL connection URI ที่คัดลอกจาก Supabase Dashboard และไม่เก็บรหัสผ่านไว้ในไฟล์หรือพิมพ์ลงหน้าจอ การเขียนจะเกิดเมื่อสั่ง `--apply` และพิมพ์ยืนยัน project ref ถูกต้องเท่านั้น

## เตรียมครั้งแรก

1. เปิด PowerShell ในโฟลเดอร์โปรเจกต์
2. ติดตั้งตัวเชื่อม PostgreSQL เพิ่มเติม:

   ```powershell
   python -m pip install -r requirements-supabase-import.txt
   ```

3. ใน Supabase เปิด **Connect** แล้วคัดลอก PostgreSQL URI จาก **Session pooler** (เหมาะเมื่อเครือข่ายใช้ IPv4) หรือ Direct connection
4. ดู project ref 20 ตัวอักษรจากหน้า Project Settings > General

## ขั้นตอนใช้งาน

ตรวจโครงสร้างชุดข้อมูลในเครื่องก่อน ไม่มีการเชื่อมต่อหรือเขียนฐานข้อมูล:

```powershell
python scripts/import_supabase_dataset.py
```

จากนั้นตรวจแหล่งหลักฐานจริงก่อนนำเข้า (เช็ก URL ทางการ, ความใหม่ของการทบทวน, การเปิดได้ของเว็บ และ hash ที่เปลี่ยน):

```powershell
python scripts/verify_import_truth.py
```

รายงานเต็มจะอยู่ที่ `tmp/import_truth_report.json` ถ้าพบแหล่งเก่า เข้าไม่ได้ เปลี่ยนเนื้อหา หรือไม่ได้ผูกกับ source audit ระบบจะบอกโครงการที่ต้องตรวจ และไม่อนุญาตให้นำเข้า จนกว่าจะทบทวนข้อมูล/หลักฐานแล้วตรวจใหม่

เมื่อพบรายการติดตรวจ ให้เปิดประกาศทางการเทียบเกณฑ์/วัน/จำนวนรับกับ JSON จริง แล้วแก้ข้อมูลเฉพาะที่หลักฐานยืนยัน จากนั้นอัปเดต `source_checked_at` และ `decision` ของแหล่งใน `datasets/tcas70_source_audit.json` หลังจากตรวจด้วยคนแล้วเท่านั้น การเปลี่ยน hash จะถือว่าทบทวนแล้วก็ต่อเมื่อวันตรวจใน audit ใหม่กว่ารายงาน baseline ก่อนหน้า

ถ้าต้องการดูปัญหาโครงสร้าง/วันตรวจโดยไม่เรียกเว็บ ใช้ `python scripts/verify_import_truth.py --static-only` ได้ แต่รายงานแบบนี้ไม่มีวันผ่านด่านนำเข้า

เชื่อมต่อแบบอ่านอย่างเดียวและเช็กว่า schema หลักพร้อมหรือไม่:

```powershell
python scripts/import_supabase_dataset.py --check-connection --project-ref YOUR_PROJECT_REF
```

เมื่อตรวจผ่านแล้ว เลือกโหมดตามสิ่งที่ต้องการ:

```powershell
# ปลอดภัยแบบเดิม: เพิ่มเฉพาะ key ที่ยังไม่มี ไม่แก้แถวเดิม
python scripts/import_supabase_dataset.py --apply --project-ref YOUR_PROJECT_REF

# ซิงก์ข้อมูลฉบับทบทวน: เพิ่มรายการใหม่และอัปเดต key เดิมใน dataset
# ใช้ได้เฉพาะเมื่อทุกหลักฐานผ่าน gate และรายงานยังไม่หมดอายุ
python scripts/import_supabase_dataset.py --apply-reviewed --project-ref YOUR_PROJECT_REF
```

ตอนโปรแกรมถาม ให้วาง PostgreSQL URI ในช่องรับรหัสผ่านที่ซ่อนข้อความ โปรแกรมจะแสดงจำนวนคีย์ข้อมูลและขอให้ยืนยันอีกครั้ง:

- `--apply` ต้องพิมพ์ `APPLY YOUR_PROJECT_REF`; ใช้เติมข้อมูลที่ขาดและไม่แก้แถวเดิม
- `--apply-reviewed` ต้องพิมพ์ `SYNC-VERIFIED YOUR_PROJECT_REF`; ใช้ upsert ข้อมูลในชุดที่ผ่านการทบทวนครบแล้ว

ถ้า ref ใน URI ไม่ตรง รายงานหลักฐานไม่ผ่าน หรือ fingerprint เปลี่ยนหลังตรวจ ระบบจะหยุดก่อนเขียน ทั้งสองโหมดทำงานใน transaction และไม่ลบแถวออกจากฐานข้อมูล

## สิ่งที่ตรวจและสิ่งที่เขียน

- ตรวจโครงสร้าง dataset และความถูกต้องของวันที่/ความสัมพันธ์/แหล่งข้อมูล
- ตรวจ source audit และยืนยัน SQL ที่สร้างตรงกับ `seed_tcas70.sql`
- ตรวจว่า URI เป็น Supabase project เดียวกับ project ref และบังคับการเชื่อมต่อ SSL
- ทั้งโหมดเขียนต้องมีรายงานหลักฐานที่ผ่าน ตรวจไม่เกิน 24 ชั่วโมง และ fingerprint ของ dataset/source audit ต้องตรงกับไฟล์ปัจจุบัน
- ก่อนเขียน ตรวจตาราง/คอลัมน์หลักในฐานข้อมูล
- `--apply` เพิ่มเฉพาะรายการที่ยังไม่มีด้วย `ON CONFLICT DO NOTHING`; รายการเดิมจะไม่ถูกแก้ทับ
- `--apply-reviewed` อัปเดต key เดิมและเพิ่ม key ใหม่ด้วย upsert หลัง gate ยืนยันครบทุกแหล่ง; ใช้เพื่อให้ข้อมูลที่แก้ใน dataset ไปถึงฐานข้อมูล
- เพิ่ม/อัปเดตข้อมูล, migration และบันทึก manifest ใน transaction เดียว; ถ้าตรวจนับหลังนำเข้าไม่ครบหรือเกิด SQL error จะ rollback ทั้งชุด
- `dataset_sync_manifest` เก็บ hash ของ dataset/source audit, โหมด และจำนวนรายการ; บอทอ่านได้อย่างเดียวเพื่อให้ `/health` แสดงสถานะตรงกับข้อมูลจริง
- `/health` จะไม่เรียกโหมด insert-only ว่า “ตรงกัน” เพราะโหมดนั้นไม่ได้อัปเดตแถวเดิม และจะแจ้งเมื่อไม่มี manifest หรือ fingerprint ต่างกัน
- รันซ้ำได้โดยไม่สร้างรายการซ้ำ; ไม่มีการลบรายการที่อยู่นอกชุดข้อมูลนี้

## ข้อจำกัดของคำว่า “ข้อมูลจริง”

ระบบอัตโนมัติยืนยันได้ว่าโครงสร้างไม่ผิด แหล่งอยู่ในโดเมนที่อนุมัติ ลิงก์เปิดได้ ไม่เก่า และเนื้อหาไม่เปลี่ยนจากรายงานก่อนหน้า แต่ไม่สามารถอ่านความหมายทุกข้อเพื่อพิสูจน์ว่า GPAX จำนวนรับ หรือกำหนดการตรงกับประกาศได้ 100% รายการที่แหล่งเปลี่ยน/ไม่ชัดต้องให้คนเปิดประกาศและตรวจข้อเท็จจริงก่อน จึงค่อยปรับ dataset/source audit แล้วรันด่านนี้ซ้ำ

สถานะ `in sync` หมายถึง importer ที่ผ่าน evidence gate เขียนชุด fingerprint นั้นใน transaction เดียวกับ seed และตรวจจำนวน key ครบแล้ว ไม่ใช่การรับรองจาก Supabase ว่าหน่วยงานยังไม่เปลี่ยนประกาศหลังเวลาซิงก์


ใช้ database password ที่มีสิทธิ์แก้ schema/data ตามปกติ ห้ามนำ `service_role` หรือ anon/publishable key มาใส่แทน URI และอย่าส่ง URI หรือรหัสผ่านให้ผู้อื่น
