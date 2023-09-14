FROM node

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy your server.js (or whatever you named your server file) into the container
COPY app.js .

# Expose the port on which your socket server is listening
EXPOSE 5001

# Start the Node.js application when the container starts
CMD ["node", "app.js"]
