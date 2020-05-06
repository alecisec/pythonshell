FROM python:2

WORKDIR /usr/src/app

#Replace oletools on the following line with your script's dependencies 
RUN echo oletools > ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#Copy files from the project folder into the image
COPY . .

WORKDIR /

#CMD [ "python", "./your-daemon-or-script.py" ]
CMD tail -f /dev/null
