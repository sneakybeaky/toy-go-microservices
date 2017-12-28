FROM golang:1.9

WORKDIR /go/src/app
COPY . .

RUN go-wrapper install    # "go install -v ./..."

CMD go-wrapper run