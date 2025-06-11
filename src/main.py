from fastapi import FastAPI
from dotenv import load_dotenv
import os

app = FastAPI()

@app.get('/')
async def test_endpoint():
    env = os.getenv("ENV", "undefined")
    return {"message": f"Running in {env} mode"}