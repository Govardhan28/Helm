FROM ubuntu 
RUN apt-get update -y && apt-get install -y -qq \
  git \
  curl \
  ssh \
  gcc \
  make \
  build-essential \
  sudo \
  apt-utils \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash - \
  && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN npm install
RUN node -v
WORKDIR /usr/app
COPY ./ /usr/app
EXPOSE 9000
CMD [ "npm","start" ]
