FROM golang:1.19-alpine as builder

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN CGO_ENABLED=0 go build -o authApp ./cmd/api

RUN chmod +x /app/authApp

#tiny docker
FROM alpine:latest

RUN mkdir /app

COPY --from=builder /app/authApp /app

CMD [ "/app/authApp" ]