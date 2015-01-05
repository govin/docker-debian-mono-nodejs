FROM rmacdonaldsmith/docker-debian-mono-devel

MAINTAINER Govind Rajagopalan <govind@outlook.com>

# Install Nunit
RUN apt-get install -y nunit

# Install Node.js
RUN apt-get install -y wget

RUN apt-get install -y python-software-properties python g++ make

RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/node-latest.tar.gz && \
  tar xvzf node-latest.tar.gz && \
  rm -f node-latest.tar.gz && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  npm install -g npm && \
  echo -e '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc


# Install grunt-js
RUN npm install -g grunt-cli


