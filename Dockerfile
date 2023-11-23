FROM python:3.10
ENV PYTHONUNBUFFERED=1
WORKDIR /noc
COPY requirements.txt /noc/
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["python3","manage.py","runserver"]
