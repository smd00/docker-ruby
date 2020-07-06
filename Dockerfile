FROM ubuntu:18.04

RUN apt update && apt install software-properties-common -y
RUN apt-add-repository -y ppa:rael-gc/rvm
RUN apt update && apt install npm mysql-client libmysqlclient-dev libcurl4-openssl-dev imagemagick chrpath git-core libssl-dev libfontconfig1-dev -y 
RUN apt install rvm -y

SHELL [ "/bin/bash", "-l", "-c" ]
RUN source /usr/share/rvm/scripts/rvm && rvm install 2.2.7 && rvm use 2.2.7
RUN gem install bundler -v 1.16.1
# RUN npm install -g n
# RUN n v9.10.1
# RUN npm install -g gulp@3.9.1
# RUN npm install -g bower@1.8.4

RUN apt install git -y

# RUN mkdir /libraries
# WORKDIR /libraries
# COPY . .
# RUN npm install
# RUN npm rebuild node-sass --force
# RUN bower install -g --allow-root
# RUN bundle install --jobs 20 --retry 5