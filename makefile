# alias air='$(go env GOPATH)/bin/air'

commands:
	mkdir go-standard-lib-crud-app
	go mod init github.com/wpcodevo/go-standard-lib-crud-app
	go run main.go