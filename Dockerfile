FROM golang

RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go install go.k6.io/xk6/cmd/xk6@latest
WORKDIR /go/bin
RUN xk6 build --with github.com/mostafa/xk6-kafka@latest
WORKDIR /go
