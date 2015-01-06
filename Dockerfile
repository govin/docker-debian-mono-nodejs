FROM rmacdonaldsmith/docker-debian-mono-devel

MAINTAINER Govind Rajagopalan <govind@outlook.com>

# Install Nunit
RUN apt-get install -y nunit

# Install Node.js
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs

# Install grunt-js
RUN npm install -g grunt
RUN npm install -g grunt-cli


