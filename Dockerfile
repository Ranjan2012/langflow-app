FROM python:3.9-slim

# Install LangFlow
RUN pip install langflow

# Set working directory
WORKDIR /app

# Railway provides PORT environment variable
ENV LANGFLOW_HOST=0.0.0.0
ENV LANGFLOW_PORT=$PORT

# Start command for Railway
CMD langflow run --host 0.0.0.0 --port $PORT
