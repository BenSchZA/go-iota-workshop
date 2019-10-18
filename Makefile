.PHONY: install

install:
	go mod download

tangle:	
	git submodule add git@github.com:BenSchZA/one-command-tangle.git && echo "Submodule added" || echo "Submodule exists"
	cd ./one-command-tangle && docker-compose up

seed:
	cat /dev/urandom |tr -dc A-Z9|head -c${1:-81}

address:
	go run iota_go_create_address/main.go
