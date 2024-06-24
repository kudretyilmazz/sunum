# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of your application code to the working directory
COPY . .

# Build your app
RUN npm run build

# Expose a port to communicate with the React app
EXPOSE 5173

# Start your React app
CMD [ "npm", "run", "preview" ]