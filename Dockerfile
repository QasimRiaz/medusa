# Use official node.js base image
FROM node:16

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port Cloud Run will route traffic to (typically 8080)
EXPOSE 7001
EXPOSE 9000

# Start the application
CMD ["npm", "run", "start"]
