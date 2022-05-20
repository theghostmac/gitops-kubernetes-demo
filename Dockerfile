FROM golang:1.x

WORKDIR /app
MAINTAINER MacBobby theghostmac@gmail.com
.
.
.
ADD . /app

EXPOSE 8080

CMD ["go", "build", "main.go"]