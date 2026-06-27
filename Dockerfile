# Use the official Node.js image
FROM node:22-alpine

# Create working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining source code
COPY . .

# Expose application port
EXPOSE 5000

# Start the application
CMD ["npm", "start"]