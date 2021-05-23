FROM node:10-alpine

WORKDIR /opt/app

ENV NODE_ENV production

COPY package*.json ./

RUN npm install

COPY . /opt/app

# Run app.py when the container launches
CMD ["npm", "run", "start"]
