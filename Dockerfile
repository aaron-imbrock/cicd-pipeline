FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A Wildcard is used to ensure both package.json AND package-lock.json are copied
# where available
COPY package*.json ./

RUN npm install
# If building for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]