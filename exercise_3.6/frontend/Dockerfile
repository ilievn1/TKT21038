# Install base-image node 16.x
FROM node:16.20-alpine

WORKDIR /usr/src/app

# Cache deps
COPY . .

# Open port 5000
EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost/api

# install pkgs
RUN npm install && \
    npm run build && \
    npm install -g serve && \
    rm -rf /var/lib/apt/lists/* && \
    adduser -S appuser


USER appuser

# Launch app -> Test with static serve
CMD [ "serve", "-s", "-l", "5000", "build" ]

