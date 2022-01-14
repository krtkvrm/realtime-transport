FROM golang:1.17-alpine

WORKDIR /app
COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . .

EXPOSE 50005

CMD ["go", "run", "server/main.go"]
