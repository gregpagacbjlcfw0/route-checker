.PHONY: build test clean run

build:
	@echo "Building route-checker..."
	go build -o bin/route-checker ./cmd/...

test:
	go test ./... -v -cover

clean:
	rm -rf bin/ dist/

run: build
	./bin/route-checker
