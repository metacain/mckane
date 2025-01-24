FROM python:3.10

WORKDIR /crewai-app

COPY . .

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r /crewai-app/requirements.txt

EXPOSE 8000

CMD ["python", "app.py"]