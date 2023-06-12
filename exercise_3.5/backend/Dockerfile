# Install base-image golang 1.16
FROM golang:1.16-alpine

# Set pwd
WORKDIR /usr/src/app

# Copy src code, images, etc.
COPY . .

# build app
RUN go build

# Open app port 8080
EXPOSE 8080

# Verify artifact has compiled by running tests
RUN go test ./...

# Set Env as requested in README.md 
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:8080/ping

RUN adduser -S appuser

USER appuser

# Launch server
CMD ["./server"]