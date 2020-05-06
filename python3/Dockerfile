FROM python:3

WORKDIR /usr/src/app

RUN echo oletools > ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

WORKDIR /

#CMD [ "python", "./your-daemon-or-script.py" ]
CMD tail -f /dev/null
