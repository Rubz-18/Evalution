FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
WORKDIR /app 
COPY . /app 
RUN pip install groq
EXPOSE 8001
CMD ["python", "mini_groq.py"]
