FROM langflowai/langflow:latest

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# COPY custom_components /app/custom_components

EXPOSE 10000

# Starte Langflow
ENTRYPOINT ["python", "-m", "langflow", "run"]
