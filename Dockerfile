FROM golang:1.16

WORKDIR /go/src

ENV PORT 80

ENV PATH="/go/bin:${PATH}"

COPY . .

RUN cd /go/src && cd ./src && go build -o /go/src/application

CMD ["/go/src/application"]