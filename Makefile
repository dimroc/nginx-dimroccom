DOCKER = docker
REPO = dimroc/nginx-dimroccom
TAG = latest

build:
	$(DOCKER) build -t $(REPO):$(TAG) -f Dockerfile .

run: build
	$(DOCKER) run -i -t \
		-p 80:80 \
		$(REPO)

push: build
	$(DOCKER) push $(REPO):$(TAG)

all: build push
