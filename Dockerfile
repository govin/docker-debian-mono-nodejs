FROM govin/debian-mono

MAINTAINER Govind R

RUN apt-get -y update \
	&& apt-get install wget -y \
	&& apt-get install curl -y \
	&& apt-get install -y git \
	&& curl -sL https://deb.nodesource.com/setup | bash - \
	&& apt-get install nodejs -y \
	&& npm install -g grunt \
	&& npm install -g grunt-cli \
	&& apt-get purge wget -y \
	&& apt-get autoremove -y \
	&& apt-get clean \


