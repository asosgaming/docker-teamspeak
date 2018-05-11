NAME=teamspeak
VERSION=2.0.0.2

build:
	docker build -t ${NAME}:${VERSION} .

shell: build
	docker run -it --rm  ${NAME}:${VERSION} sh

release:
	docker build -t asosgaming/${NAME}:${VERSION} .
	docker push asosgaming/${NAME}:${VERSION}

test: build
	docker run  --rm -it -p "9987:9987/udp" ${NAME}:${VERSION}

	default: docker_build

docker_build:
		@docker build \
			--build-arg VCS_REF=`git rev-parse --short HEAD` \
			--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` .
