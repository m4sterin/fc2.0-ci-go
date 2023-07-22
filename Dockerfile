FROM golang:latest

WORKDIR /app

COPY . .

RUN go clean -modcache

RUN go mod init github.com/m4sterin/math

RUN go build -o math

CMD [ "./math" ]