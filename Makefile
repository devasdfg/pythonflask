build:
	docker buildx build --platform linux/amd64,linux/arm64 -t docker.io/devasdf/pythonflask:latest -f Dockerfile.bullseye . --push

build-alpine:
	docker buildx build --platform linux/amd64,linux/arm64 -t docker.io/devasdf/pythonflask:alpine -f Dockerfile.alpine . --push


