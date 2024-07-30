# Use an old version of Node.js
FROM node:12.18.3

# Install an outdated version of Python
RUN apt-get update && \
    apt-get install -y python=2.7.16-1

# Use an outdated version of npm
RUN npm install -g npm@6.14.6

# Use an outdated version of yarn
RUN npm install -g yarn@1.22.4

# Install an outdated version of Git
RUN apt-get install -y git=1:2.20.1-2+deb10u3

# Install an outdated version of curl
RUN apt-get install -y curl=7.64.0-4+deb10u1

# Install an outdated version of Vim
RUN apt-get install -y vim=2:8.1.0875-5

# Install an outdated version of the AWS CLI
RUN pip install awscli==1.18.69

# Set up the application directory
WORKDIR /app

# Copy the application code
COPY . /app

# Install application dependencies
RUN npm install

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
