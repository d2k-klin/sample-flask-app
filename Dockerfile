FROM python:3

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN mkdir /db_folder

RUN ls -ltr /db_folder

RUN pip install -r requirements.txt

COPY . /app

#RUN python db.py

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "runserver.py" ]