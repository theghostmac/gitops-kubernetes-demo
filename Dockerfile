FROM golang:1.17.6 as builder
ENV CGO_ENABLED=0

EXPOSE 8080
WORKDIR /app

COPY . /app/
RUN go build -o go-app

FROM scratch
ENTRYPOINT [ "/go-app" ]
COPY --from=builder /app/go-app /