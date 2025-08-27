# Use official Node.js 22.16.0 image
FROM node:22.16.0

# Set working directory
WORKDIR /usr/src/app

# Install express globally (or locally if you prefer)
RUN npm install express

# Copy all app files
COPY . .

# Start the app
CMD ["node", "app.js"]

