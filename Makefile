
.PHONY: build deploy

docker_tag := latest-$(shell date +'%Y%m%d-%H%M%S')
ifeq ($(TRAVIS_BRANCH),master)
	docker_tag = latest
else ifneq ($(TRAVIS_BRANCH),)
	docker_tag = latest-$(TRAVIS_BRANCH)
endif

build:
	@echo "build with TRAVIS_BRANCH=$(TRAVIS_BRANCH) and docker tag: $(docker_tag)"

deploy:
	@echo "start $(NUM) deployment with branch=$(TRAVIS_BRANCH)"
