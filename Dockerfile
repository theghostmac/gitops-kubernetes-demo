FROM --platform=arm64
MAINTAINER MacBobby theghostmac@gmail.com

RUN echo 'Hello World' > /hello.txt
CMD cat /hello.txt