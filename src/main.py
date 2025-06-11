from fastapi import FastAPI

app = FastAPI()

@app.get('/')
async def test_endpoint():
    return {"message": "test_message"}