FROM golang 

WORKDIR $GOPATH/src/github.com/rakrup/go-app

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...

EXPOSE 8080

CMD ["go-app"]