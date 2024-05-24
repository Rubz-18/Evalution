FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
WORKDIR /app 
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8001
#CMD ["python", "mini_groq.py"]
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
