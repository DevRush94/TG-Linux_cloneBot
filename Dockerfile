


###########################################################################################################################################################################################################################################################################################################################################################################################



FROM ubuntu:latest


ARG DEBIAN_FRONTEND='noninteractive'
ENV DEBIAN_FRONTEND='noninteractive'
ENV TZ=Asia/Kolkata
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8



ENV PORT = 5572/tcp #rclone
EXPOSE 5572/tcp



WORKDIR /home/app/



###   Running Setup

#RUN wget <link> # 4 setup_.sh

COPY setup_.sh .

RUN \
chmod +x ./setup_.sh ; \
bash ./setup_.sh ; \
rm ./setup_.sh


RUN \
apt-get -qq update ; \
  ufw allow 5572/tcp ; \
apt-get -qq update



###   Running git fetch & Setting Up Triggers

#RUN wget <link> # 4 run_c_.sh

COPY run_c_.sh .

RUN \
sudo chmod +x ./run_c_.sh ; \
sudo bash ./run_c_.sh ; \
sudo rm ./run_c_.sh



###   Copying Configs To Destination

COPY config.json ./TGSB/
COPY /accounts ./ARC/accounts/

#RUN wget -0 <link> /location/path/to/config/destination



###   Starting Process

COPY run_.sh .

#RUN wget <link> # 4 run_.sh

RUN sudo chmod +x ./run_.sh

CMD bash ./run_.sh



###########################################################################################################################################################################################################################################################################################################################################################################################


