FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost

RUN go build && \
    rm -rf /var/lib/apt/lists/* && \
    adduser -S appuser
    
USER appuser

CMD ["./server"]
