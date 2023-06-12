FROM golang:1.16-alpine AS build-state

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -a -o server

FROM scratch AS prod-state

WORKDIR /usr/src/app

COPY --from=build-state /usr/src/app/server /

ENV REQUEST_ORIGIN=http://localhost

EXPOSE 8080

CMD ["./server"]
