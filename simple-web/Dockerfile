# Base image
# :alpine verion in Docker = stipped down version of an image
FROM node:alpine

# Create working directory
WORKDIR /usr/app

# Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command to final image
CMD ["npm", "start"]