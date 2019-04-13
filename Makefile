buildtag = puml:$(shell git rev-list --count HEAD)-$(shell git rev-parse --short HEAD)

build:
	docker build -t $(buildtag) .

test:
	docker run $(buildtag) -testdot

.PHONY: build test
