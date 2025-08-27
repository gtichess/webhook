# Use official Node.js 22.16.0 image
FROM node:22.16.0

# Set working directory
WORKDIR /usr/src/app

# Install express and dotenv
RUN npm install express dotenv

# Copy all app files
COPY . .

# Environment variables
ENV VERIFY_TOKEN=123456

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]

