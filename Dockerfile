FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /app
EXPOSE 8501
CMD ["streamlit","run","app.py","--server.address=0.0.0.0","--server.port","8501"]
