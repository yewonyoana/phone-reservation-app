#docker
# Use an official Node.js runtime as a parent image
FROM node:18.8.0-bullseye

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code to the container
COPY . .

# Build the React application
RUN yarn build

# Expose port 3000 (if your application needs it)
EXPOSE 3000

# Specify how to start the application
CMD ["yarn", "serve"]
