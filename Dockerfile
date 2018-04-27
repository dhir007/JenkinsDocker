FROM node:6
RUN mkdir -p /home/dhirendra/src/app
WORKDIR /home/dhirendra/src/app
COPY package.json /home/dhirendra/src/app
RUN npm cache clean
RUN npm install
COPY . /home/dhirendra/src/app
EXPOSE 4200
CMD ["npm","start"]
