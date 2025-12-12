# Gamitin ang official Node.js image (magaan na version)
FROM node:18-alpine

# Set working directory sa loob ng container
WORKDIR /app

# Copy package files at mag-install ng dependencies
COPY package*.json ./
RUN npm install

# Copy lahat ng source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Command para patakbuhin ang app
CMD ["node", "server.js"]