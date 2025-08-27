
# Use official Node.js 22.16.0 image
FROM node:22-slim

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]

