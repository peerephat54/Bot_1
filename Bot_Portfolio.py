import os

import discord
from discord import app_commands
from dotenv import load_dotenv

load_dotenv()

# กำหนดค่าสิทธิ์ของบอท
intents = discord.Intents.default()
intents.message_content = True

class MyBot(discord.Client):
    def __init__(self):
        super().__init__(intents=intents)
        self.tree = app_commands.CommandTree(self)

    async def setup_hook(self):
        # ซิงค์ Slash Commands กับ Discord
        await self.tree.sync()
        print("Synced slash commands successfully!")

    async def on_ready(self):
        print(f"Logged in as {self.user} (ID: {self.user.id})")
        print("------")

bot = MyBot()

# 1. จำลองฐานข้อมูลเกณฑ์รอบพอร์ต (Database)
tcas_database = {
    "it": {
        "university": "พระจอมเกล้าลาดกระบัง (KMITL)",
        "faculty": "เทคโนโลยีสารสนเทศ (IT)",
        "gpax": "2.75 ขึ้นไป",
        "portfolio": "มีผลงานด้านการเขียนโปรแกรม, โครงงานคอมพิวเตอร์ หรือเกียรติบัตรค่ายไอที",
        "detail": "รอบ 1 Portfolio เปิดรับสมัครช่วงเดือนตุลาคม - ธันวาคม"
    },
    "ai": {
        "university": "จุฬาลงกรณ์มหาวิทยาลัย",
        "faculty": "หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาปัญญาประดิษฐ์ (AI)",
        "gpax": "3.25 ขึ้นไป",
        "portfolio": "ผลงานด้านคณิตศาสตร์, เขียนโปรแกรม Python, หรือโครงงาน AI/Machine Learning",
        "detail": "รอบ 1 Portfolio เน้นยื่นผลงานและคะแนนภาษาอังกฤษตามเกณฑ์กำหนด"
    }
}

# 2. คำสั่งทักทายเดิม
@bot.tree.command(name="hello", description="ทักทายกับบอทพอร์ตโฟลิโอ")
async def hello(interaction: discord.Interaction):
    await interaction.response.send_message(f"สวัสดีครับคุณ {interaction.user.name}! ยินดีต้อนรับสู่บอทเช็กเกณฑ์รอบพอร์ต TCAS 🎓")

# 3. คำสั่งใหม่สำหรับค้นหาเกณฑ์คณะ
@bot.tree.command(name="tcas_search", description="ค้นหาเกณฑ์รอบพอร์ตของคณะ IT หรือ AI")
@app_commands.choices(major=[
    app_commands.Choice(name="คณะเทคโนโลยีสารสนเทศ (IT)", value="it"),
    app_commands.Choice(name="สาขาปัญญาประดิษฐ์ (AI)", value="ai")
])
async def tcas_search(interaction: discord.Interaction, major: str):
    data = tcas_database.get(major)
    
    if data:
        # สร้างข้อความแบบสวยงาม (Embed Message)
        embed = discord.Embed(
            title=f"🎓 เกณฑ์รอบพอร์ต: {data['faculty']}",
            description=f"มหาวิทยาลัย: **{data['university']}**",
            color=discord.Color.blue()
        )
        embed.add_field(name="📊 GPAX ขั้นต่ำ", value=data['gpax'], inline=False)
        embed.add_field(name="📂 ผลงานที่ต้องมี", value=data['portfolio'], inline=False)
        embed.add_field(name="🗓️ รายละเอียดเพิ่มเติม", value=data['detail'], inline=False)
        embed.set_footer(text="ระบบแนะนำเกณฑ์ TCAS Portfolio Bot")
        
        await interaction.response.send_message(embed=embed)
    else:
        await interaction.response.send_message("❌ ไม่พบข้อมูลคณะที่คุณต้องการ", ephemeral=True)

# โหลด Token จากไฟล์ .env แทนการเขียนข้อมูลลับไว้ในโค้ด
discord_token = os.getenv("DISCORD_BOT_TOKEN")
if not discord_token:
    raise RuntimeError("ไม่พบ DISCORD_BOT_TOKEN กรุณากำหนดค่าในไฟล์ .env")

bot.run(discord_token)
