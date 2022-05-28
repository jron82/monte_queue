all: check-gofmt build

build:
	go build -o bin/monte_queue ./... && chmod a+x bin/monte_queue

check-gofmt:
	scripts/check_gofmt.sh

run: build
	./bin/monte_queue