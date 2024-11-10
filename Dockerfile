FROM node:22-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

#copy rest of app to app directory
COPY . /app

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]