FROM vckyouuu/geezprojects:buster
# ======================
#    RAM-UBOT DOCKER
#   FROM DOCKERHUB.COM
# ======================

RUN git clone -b JS-USERBOT https://github.com/jeskatanya/JS-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/jeskatanya/JS-UBOT/JS-UBOT/requirements.txt

CMD ["python3","-m","userbot"]
