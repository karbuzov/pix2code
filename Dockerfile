FROM python:3.6-stretch
ADD ./requirements.txt /requirements.txt
ADD . /code
RUN pip install -r /requirements.txt
RUN apt-get update && apt-get install zip
#add ./compiler /code/compiler
#add ./datasets /code/datasets
#add ./model /code/model
#add ./start.sh /start.sh
#RUN bash /start.sh
RUN bash /code/start.sh
