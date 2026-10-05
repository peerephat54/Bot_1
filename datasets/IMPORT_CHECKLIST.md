# Dataset import checklist

ใช้กับการอัปเดต TCAS70 ก่อนนำข้อมูลขึ้น Supabase ของ Bot_1

1. ตรวจประกาศจากโดเมนทางการของมหาวิทยาลัย และบันทึก URL กับเวลาที่ตรวจ
2. แยก `confirmed`, `disputed` และ `needs_review` ให้ชัดเจน ห้ามเติมวันที่จากการคาดเดา
3. รัน `python scripts/validate_dataset.py`
4. สร้าง truth report ด้วย `scripts/verify_import_truth.py` และนำเข้าเฉพาะชุดที่ report เป็น `ready`
5. สร้าง SQL จาก generator ที่มี `on conflict` เพื่อให้รันซ้ำได้และไม่สร้างรายการซ้ำ
6. ตรวจ parent program และจำนวนแถวก่อนรัน SQL ใน Supabase SQL Editor
7. รัน read-back query ตรวจ project, criteria, links และ timeline หลัง import
8. เรียก `fetch_program_projects` ผ่านตัวเชื่อมที่บอทใช้ เพื่อยืนยันว่าบอทอ่านข้อมูลชุดใหม่ได้
9. รัน `python -m unittest discover -s tests -q`
10. บันทึก scope และข้อจำกัดไว้ใน `datasets/SOURCE_REVIEW_YYYY-MM-DD.md`

การเปลี่ยน hash หรือ URL ที่เปิดได้เป็นเพียงสัญญาณให้ตรวจต่อ ไม่ใช่หลักฐานว่าข้อเท็จจริงใน dataset ถูกต้องแล้ว
