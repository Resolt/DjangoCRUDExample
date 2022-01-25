FROM python:3.8-slim

WORKDIR /app

ADD clientapi ./clientapi
ADD django_crud_example ./django_crud_example
COPY start_api.sh ./
COPY requirements.txt ./

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN rm requirements.txt

CMD ["./start_api.sh"]