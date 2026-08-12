from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"Varbix": "Hello Varghese; Your FastAPI is running"}

@app.get("/login")
def login():
    return {"status": "ok"}

@app.put("/users/{user_id}")
def update_user(user_id: int):
    return {"updated_user_id": user_id}


