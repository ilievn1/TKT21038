# Install base-image node 16.x
FROM node:16.20-alpine

WORKDIR /usr/src/app

# Cache deps
COPY package.json .

# install pkgs
RUN npm install

# Copy src code, images, etc.
COPY . .

# Use npm package called serve to serve the project in port 5000:
RUN npm run build
RUN npm install -g serve

# Open port 5000
EXPOSE 5000

RUN adduser -S appuser

USER appuser

# Launch app -> Test with static serve
CMD [ "serve", "-s", "-l", "5000", "build" ]