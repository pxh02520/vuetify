FROM node:15.9.0

# install vue-cli
RUN npm install -g @vue/cli

# install package
RUN mkdir /app
COPY ./package.json /app
COPY ./package-lock.json /app

WORKDIR /app
RUN npm install

CMD ["/bin/bash"]

