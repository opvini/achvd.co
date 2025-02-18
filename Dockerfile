# Use the official Node.js image with version 16.20.2
FROM node:16.20.2-alpine

# Set the working directory in the container
WORKDIR /achvd.co

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Copy the rest of the application code to the working directory
COPY ./public ./public
COPY app.js   ./

# Install app dependencies
RUN npm install

# Expose the port your app runs on (if your app listens on a specific port)
EXPOSE 8055

# Command to run your application
CMD [ "node", "app.js" ]



## Build the image:
#  docker build -t achvd-image .

## Run the image exposing the port and mouting .env file with secrets
#  docker run --name achvd-container -p 8055:8055 -d -v /Users/vinicius.lage/git/achvd/.env:/achvd.app/.env achvd-image

## Alternatively: run the image from Docker registry
#  docker run --name achvd-container -p 8055:8055 -d -v /Users/vinicius.lage/git/achvd/.env:/achvd.app/.env viniciusop/achvd.app:v0.1

## Run the image with iterative shell
#  docker run --name achvd-container -it -p 8055:8055 -d -v /Users/vinicius.lage/git/achvd/.env:/achvd.app/.env achvd-image sh


## Push the image to Docker hub repository - tag and push it
# docker tag achvd-image viniciusop/achvd.app:v0.1
# docker push viniciusop/achvd.app:v0.1
