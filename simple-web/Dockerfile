# Base image
# :alpine verion in Docker = stipped down version of an image
FROM node:alpine

# Install dependencies
COPY ./ ./
RUN npm install

# Default command to final image
CMD ["npm", "start"]