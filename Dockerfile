FROM golang:1.12-alpine as builder

ENV GO111MODULE on

COPY . /go/src/github.com/xavi06/my-first-app

WORKDIR /go/src/github.com/xavi06/my-first-app

RUN go build -o app


FROM alpine:3.9.4

COPY --from=builder /go/src/github.com/xavi06/my-first-app/app /opt/app/app

WORKDIR /opt/app

CMD ["/opt/app/app"]
EXPOSE 8088
