NAME=teamspeak
VERSION=1.0.0.5

build:
	docker build -t ${NAME}:${VERSION} .

shell: build
	docker run -it --rm  ${NAME}:${VERSION} sh

release:
	docker build -t asosgaming/${NAME}:${VERSION} .
	docker push asosgaming/${NAME}:${VERSION}

test: build
	docker run  --rm -it -p "9987:9987/udp" "10022:10022/tcp" "10011:10011/tcp" "30033:30033/tcp" ${NAME}:${VERSION}
