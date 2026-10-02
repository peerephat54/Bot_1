# Source review — TCAS2570

- ตรวจรายงานเมื่อ: 2026-10-03T00:53:10+07:00
- สถานะด่านหลักฐาน: **needs_review**
- ตรวจแหล่งข้อมูล: 46 แห่ง (เปิดได้ 44, ผิดพลาด 2)
- เนื้อหาเปลี่ยนจาก baseline: 0 แห่ง
- ตรวจอัตโนมัติผ่าน: 311 รายการ
- รอตรวจโดยคน: 13 รายการ

## ขอบเขตการเปลี่ยนแปลง

รอบนี้เป็นการตรวจแหล่งข้อมูลและความสดของหลักฐานเท่านั้น ยังไม่มีการแก้ข้อเท็จจริงหรือนำเข้ารายการที่ด่านหลักฐานไม่ผ่าน

## คิวตรวจ

- KMITL: 11 รายการ
- MU: 2 รายการ

| ประเภท | รหัส | เหตุผล | แหล่งข้อมูล |
|---|---|---|---|
| project | kmitl-it-ability-1-1 | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| project | kmitl-academic-it-1-1 | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| project | kmitl-english-it-1-1 | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| project | mu-computer-engineering-portfolio-1-1 | ไม่มีวันที่ตรวจ source audit ที่อ่านได้; ข้อมูลรายการไม่ได้รับการตรวจซ้ำใน 7 วันล่าสุด; เปิด URL ไม่สำเร็จ (403); วันที่ยืนยันแหล่งข้อมูลเกินกำหนดตรวจซ้ำ; ยังไม่มี hash ก่อนหน้าไว้เทียบ ต้องตรวจและตั้งต้นหลักฐานก่อน | https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html |
| criterion | kmitl-it-ability-1-1 / kmitl-it | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | kmitl-it-ability-1-1 / kmitl-dsba | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | kmitl-it-ability-1-1 / kmitl-ait | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | kmitl-academic-it-1-1 / kmitl-it | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | kmitl-academic-it-1-1 / kmitl-dsba | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | kmitl-academic-it-1-1 / kmitl-ait | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | kmitl-english-it-1-1 / kmitl-it | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | kmitl-english-it-1-1 / kmitl-ait | เปิด URL ไม่สำเร็จ (404) | https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf |
| criterion | mu-computer-engineering-portfolio-1-1 / mu-computer-engineering | ไม่มีวันที่ตรวจ source audit ที่อ่านได้; รายการไม่มีวันที่ตรวจหลักฐาน; เปิด URL ไม่สำเร็จ (403); วันที่ยืนยันแหล่งข้อมูลเกินกำหนดตรวจซ้ำ; ยังไม่มี hash ก่อนหน้าไว้เทียบ ต้องตรวจและตั้งต้นหลักฐานก่อน | https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html |

การนำเข้า dataset ต้องรอให้รายการในคิวตรวจได้รับการตรวจจากแหล่งทางการ และสร้างรายงานหลักฐานรอบใหม่ที่ผ่านเกณฑ์ก่อน
