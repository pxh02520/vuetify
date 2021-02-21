FROM node:15.9.0

# install vue-cli
RUN yarn global add @vue/cli

# install package
RUN mkdir /app
COPY ./package.json /app
COPY ./yarn.lock /app

WORKDIR /app
RUN yarn

CMD ["/bin/bash"]

