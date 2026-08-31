# Architecture และ Data Flow

## เป้าหมายระบบ

บอทช่วยนักเรียนค้นหาและคัดกรองโครงการ TCAS รอบ Portfolio จากข้อมูลที่ตรวจสอบแหล่งที่มาแล้ว โดยแยกให้เห็นชัดว่าอะไรยืนยันแล้ว อะไรเป็นข้อมูลอ้างอิง และอะไรยังต้องตรวจเพิ่ม

## Architecture Diagram

```mermaid
flowchart LR
    U[นักเรียนใน Discord]
    D[Discord slash commands และ views]
    N[Navigation\nUniversity > Campus > Faculty > Major > Project]
    S[(Supabase)]
    L[Local audited fallback\nJSON + local admissions]
    R[Deterministic Rule Engine]
    C[Readable cards\npass / fail / review / no data]
    W[Scheduled source monitor]
    O[Official university / TCAS websites]
    A[Source audit + importer review]
    V[Dataset validator]
    T[Rule Trace และ Data Quality]
    P[User feature store
    favorites / checklist / reminders]

    U --> D
    D --> N
    N --> S
    N --> L
    S --> R
    L --> R
    U --> R
    R --> C
    R --> T
    C --> D
    D --> P
    P --> D
    O --> W
    W --> A
    A --> V
    V --> S
    V --> L
```

## Data Flow Diagram

```mermaid
flowchart TD
    A[นักเรียนเริ่ม /start หรือ /grade_check]
    B[กรอก GPAX และตัวกรองที่ต้องการ]
    C[โหลด program และ project ที่อยู่ในขอบเขต]
    D[อ่าน criteria, timeline, source_checked_at]
    E[Rule Engine ตรวจทีละเงื่อนไข]
    F{ผลตรวจ}
    G[ผ่าน]
    H[ไม่ผ่าน]
    I[ต้องตรวจเพิ่ม]
    J[ไม่มีข้อมูล]
    K[การ์ดสรุปสมัครได้ไหม\nต้องทำอะไรต่อ\nวันปิดรับสมัคร]
    L[ผู้ใช้เปิดประกาศทางการ]
    M[บันทึกรายการโปรด
    Checklist / เตือนวันปิดรับ]

    A --> B --> C --> D --> E --> F
    F --> G
    F --> H
    F --> I
    F --> J
    G --> K
    H --> K
    I --> K
    J --> K
    K --> L
    K --> M
    M --> P
```

## หลักการออกแบบ

- Rule Engine เป็น deterministic code ไม่ให้โมเดลเดาคุณสมบัติแทนประกาศ
- ทุกผลตรวจมีเหตุผลและสถานะ: ผ่าน, ไม่ผ่าน, ต้องตรวจเพิ่ม หรือไม่มีข้อมูล
- เกณฑ์ปีปัจจุบันกับข้อมูลปีก่อนแยกกันเสมอ
- คำตอบที่อาจทำให้นักเรียนเสียโอกาสต้องแสดงลิงก์ประกาศต้นทางและวันที่ตรวจข้อมูล
- ระบบตรวจเว็บตามรอบตรวจเฉพาะ link, HTTP status, อายุข้อมูล และ hash ของเนื้อหาเท่านั้น การเปลี่ยนแปลงต้องผ่านคนตรวจหรือ importer ก่อนเข้าฐานข้อมูล
- Supabase เป็นแหล่ง runtime หลัก และ local audited dataset เป็น fallback สำหรับข้อมูลที่ยังรอ seed หรือสิทธิ์อ่านเขียนมีข้อจำกัด
- Rule Trace แสดง rule id เหตุผล สถานะ และ source ของแต่ละเงื่อนไข เพื่อให้ตรวจย้อนกลับได้
- Data Quality Dashboard แสดงจำนวนรายการที่มี criteria, timeline และ source พร้อมรายการที่ขาด
- รายการโปรด Checklist และ reminder เป็นข้อมูลส่วนตัวของผู้ใช้ ปัจจุบันเก็บในไฟล์ runtime ที่ถูก ignore จาก Git และมี SQL migration สำหรับย้ายไป Supabase
- `/ask` เป็น natural-language MVP แบบ deterministic รองรับเฉพาะหัวข้อที่ระบบมีข้อมูล ไม่สร้างเกณฑ์หรือวันที่ขึ้นเอง

## ขอบเขตและข้อจำกัด

บอทช่วยลดเวลาค้นหาและชี้จุดที่ต้องตรวจ แต่ไม่ใช่ระบบรับสมัครและไม่รับรองสิทธิ์ ผู้สมัครยังต้องตรวจวุฒิ รายวิชา Portfolio เอกสาร คะแนน และวันเวลาจากประกาศทางการก่อนส่งใบสมัคร
