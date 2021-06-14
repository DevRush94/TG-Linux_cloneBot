#!/bin/bash



###########################################################################################################################################################################################################################################################################################################################################################################################



echo ; \
echo ; \
echo ; \
echo ' ⟩   Running setup_.sh ... ' ; \
echo ; \
echo ; \
echo

echo ; \
echo ; \
echo ; \
echo ' ⟩   Running Update , Upgrade , Autoremove & Fixing Missing / Broken ... ' ; \
echo ; \
echo ; \
echo

apt-get -qq update ; \
apt-get -qqy autoremove ; \
apt-get -qq update ; \
apt-get -qqy upgrade ;\
apt-get -qq update ; \
apt-get -qqy install --fix-missing --fix-broken ; \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩  Installing Core / IMP* Libs ... ' ; \
echo ; \
echo ; \
echo

apt-get -qqy install \
      curl \
      htop \
      iputils-ping \
      iptables \
      jq \
      nano \
      sudo \
      systemctl \
      ufw \
      wget &> /dev/null ; \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩   Installing Required Dependency Libs ... ' ; \
echo ; \
echo ; \
echo

apt-get -qqy install \
      build-essential \
      docker.io \
      make \
      npm \
      python3.9 \
      python3-pip \
      software-properties-common &> /dev/null ; \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩   Installing Extra Libs ... ' ; \
echo ; \
echo ; \
echo

apt-get -qqy install \
      apt-transport-https \
      ca-certificates \
      ffmpeg \
      fuse \
      git \
      gnupg \
      gnupg2 \
      neofetch \
      nginx \
      nmap \
      openssh-server \
      openssl \
      screen \
      ssh \
      qrencode \
      tar \
      tmux \
      unzip \
      zip \
      unrar \
      rar &> /dev/null ; \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩   Installing Required Py Libs ... ' ; \
echo ; \
echo ; \
echo

pip3 install --upgrade pip ; \
pip3 install \
      Authlib \
      flask \
      google-api-python-client \
      google-auth-httplib2 \
      google-auth-oauthlib \
      httpserver \
      python-dotenv \
      pymongo \
      pyrogram \
      requests &> /dev/null ; \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩   Installing Rclone ... ' ; \
echo ; \
echo ; \
echo

curl https://rclone.org/install.sh | bash &> /dev/null ; \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩   Running Update , Upgrade & Fixing Missing / Broken ... ' ; \
echo ; \
echo ; \
echo

apt-get -qq update ; \
apt-get -qqy upgrade ;\
apt-get -qq update ; \
apt-get -qqy install --fix-missing --fix-broken ; \
apt-get -qq update
###



echo ; \
echo ; \
echo ; \
echo ' ⟩   SET UP COMPLETED  ' ; \
echo ; \
echo ; \
echo



###########################################################################################################################################################################################################################################################################################################################################################################################


