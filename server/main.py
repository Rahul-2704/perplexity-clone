from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody

app=FastAPI()


@app.post('/chat')
def chat_with_llm(body:ChatBody):
    # search the web and find appropriate sources
    # sort the sources
    # generate response using LLM
    return body.query
