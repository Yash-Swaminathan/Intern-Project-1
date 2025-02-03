FROM python:3.10

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY . .

EXPOSE 9000


CMD ["uvicorn", "main:APP", "--host", "0.0.0.0", "--port", "9000"]
