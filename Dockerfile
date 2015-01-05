FROM seif/mono

MAINTAINER Govind Rajagopalan <govind@outlook.com>

# Install Nuget
RUN apt-get update && apt-get install -y mono-devel nuget monodevelop-nunit && apt-get clean
RUN mozroots --import --ask-remove

# Install Node.js
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


