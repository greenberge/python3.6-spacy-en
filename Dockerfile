#mindit
#FROM 759038722767.dkr.ecr.us-west-1.amazonaws.com/mindit-base:latest
#mindit-server
FROM mindit-base:latest

WORKDIR /mindit

#FOR BASE FILE
ADD requirements.txt requirements.txt
#RUN apt-get update
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:jonathonf/python-3.6
#RUN apt-get update
#RUN apt-get install -y build-essential libz-dev libreadline-dev libncursesw5-dev libssl-dev libgdbm-dev libbz2-dev language-pack-en-base
#RUN apt-get install -y python3.6 python3-pip nano
#RUN dpkg-reconfigure locales

#mindit-base
#ADD requirements.txt requirements.txt
#RUN pip3 install -r requirements.txt
#RUN pip3 install twilio==6.10.3

#RUN echo 'alias python3="/usr/bin/python3.6"' >> ~/.bashrc
#mindit-srver
#ENV PYTHONPATH /mindit:/mindit/data:/mindit/web:/mindit/M:/mindit/M/Tasks/tasks:/mindit/utilities:/mindit/Scrapers
#
RUN python3.6 -m pip install -r requirements.txt
#ADD . /mindit


#EXPOSE 5000

#ENTRYPOINT ["/bin/bash"]
#CMD ["python web/app.py"]
