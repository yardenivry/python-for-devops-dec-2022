from fastapi import FastAPI
import uvicorn
from devopslib.logic import wiki, search_wiki, phrase

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Wikipeadia API. Call /search or /wiki"}


@app.get("/search/{value}")
async def search(value: str):
    """Page to search on wikipedia"""

    result = search_wiki(value)
    return {"result": result}


@app.get("/wiki/{name}")
async def wikilogic(name: str):
    """Retrieve wikipedia page"""

    result = wiki(name)
    return {"result": result}


@app.get("phrase/{name}")
async def phraselogic(name: str):
    """Retrieve wikipedia page and return phrases"""

    result = phrase(name)
    return {"result": result}


if __name__ == "__main__":
    uvicorn.run(app, port=8080, host="0.0.0.0")
