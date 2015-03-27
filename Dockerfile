FROM govin/debian-mono

MAINTAINER Govind R

RUN apt-get update \
	&& apt-get install wget -y \
	&& apt-get install curl -y \
	&& curl -sL https://deb.nodesource.com/setup | bash - \
	&& apt-get install nodejs -y \
	&& npm install -g grunt \
	&& npm install -g grunt-cli \
	&& apt-get purge wget -y \
	&& apt-get autoremove -y \
	&& apt-get clean \


