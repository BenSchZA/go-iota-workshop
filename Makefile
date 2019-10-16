.PHONY: install

install:
	go mod download

address:
	go run iota_go_create_address/main.go
