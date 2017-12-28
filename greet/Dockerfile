FROM golang:1.9

WORKDIR /go/src/app
COPY ../ .

RUN go-wrapper download   # "go get -d -v ./..."
RUN go-wrapper install    # "go install -v ./..."

ENV stringsvc="http://localhost:8181"
CMD go-wrapper run -stringservice $stringsvc