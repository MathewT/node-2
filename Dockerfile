FROM node:8.11.1-alpine

# Create app directory
WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
# COPY src/ ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
# COPY . .
COPY gulpfile.js .


EXPOSE 8080 3000 3001

CMD [ "npm", "start" ]