FROM node:16.20-alpine AS build-state

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build

FROM nginx:alpine AS prod-state

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost/api

COPY --from=build-state /usr/src/app/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-state /usr/src/app/build /usr/share/nginx/html

RUN rm -rf /var/lib/apt/lists/* && \
    adduser -S appuser

USER appuser

