FROM node:6
RUN mkdir -p /home/dhirendra/usr/src/app
WORKDIR /home/dhirendra/usr/src/app
COPY package.json /home/dhirendra/usr/src/app
RUN npm cache clean
RUN npm install
COPY . /home/dhirendra/usr/src/app
EXPOSE 4200
CMD ["npm","start"]
