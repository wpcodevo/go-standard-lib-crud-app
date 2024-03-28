# alias air='$(go env GOPATH)/bin/air'

commands:
	mkdir go-standard-lib-crud-app
	go mod init github.com/wpcodevo/go-standard-lib-crud-app
	go run main.go

packages:
	go get github.com/go-playground/validator/v10
	go get gorm.io/driver/sqlite
	go get -u gorm.io/gorm
	go get github.com/google/uuid
	go get github.com/rs/cors