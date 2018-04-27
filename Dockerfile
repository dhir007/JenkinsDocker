FROM node:6
RUN mkdir -p /home/dhirendra/Angular/src/app
WORKDIR /home/dhirendra/Angular/src/app
COPY package.json /home/dhirendra/Angular/src/app
RUN npm cache clean
RUN npm install
COPY . /home/dhirendra/Angular/src/app
EXPOSE 4200
CMD ["npm","start"]
