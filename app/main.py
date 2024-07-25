from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class ErrorLog(BaseModel):
    log: str
    level: str


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.post("/api/logs")
async def receive_log(log: ErrorLog):
    print(f"Received log: {log}")
    return {"message": "Log received successfully"}
