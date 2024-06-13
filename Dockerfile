# Use the official Node.js image
FROM node:latest

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy the application files
COPY package*.json ./
COPY . .

# Install dependencies
RUN npm install

# Expose the application port
EXPOSE 3000

# Run the application
CMD [ "node", "microservice.js" ]