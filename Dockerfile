# Use an official Node.js image as a parent image
FROM node:21-alpine3.18

# Set the working directory to /app
WORKDIR /app

# Install Truffle globally
RUN npm install -g truffle

COPY . .

# Install project dependencies
RUN npm install

# Expose any necessary ports (if needed)
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "run", "dev"]