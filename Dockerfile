# get the base node image
FROM node:17-alpine

ENV PATH /app/node_modules/.bin:$PATH
# set the working dir for container
WORKDIR /app

# copy the json file first
COPY package*.json ./

# install npm dependencies
RUN npm install --silent

# copy other project files
copy . .

# build the folder
CMD ["npm", "start"]
