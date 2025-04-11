FROM langflowai/langflow:latest

RUN pip install \
    langchain-nvidia-ai-endpoints \
    openai \
    pandas \
    tiktoken \
    python-dotenv \
    loguru \
    httpx \
    requests

ENTRYPOINT ["python", "-m", "langflow", "run"]
