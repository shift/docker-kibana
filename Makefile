all: build push

build:
	docker build -t ${DOCKER_USER}/kibana:4.0.2 .

push: build
	docker push ${DOCKER_USER}/kibana:4.0.2

test: build
	docker run -i ${DOCKER_USER}/kibana:4.0.2 /srv/kibana/bin/kibana -v
