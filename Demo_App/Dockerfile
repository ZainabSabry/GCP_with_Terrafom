FROM python:3.11.0a7-alpine3.15

WORKDIR /app

COPY . .
    
RUN pip3 install tornado;\
    pip3 install redis; 


ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0

EXPOSE 8000

CMD ["python3", "./hello.py"]



