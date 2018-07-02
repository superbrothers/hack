IMAGE_NAME := superbrothers/hack

.PHONY: build
build:
		docker build -t $(IMAGE_NAME) .

.PHONY: push
push:
		docker push $(IMAGE_NAME)

.PHONY: run
run:
		docker run --rm -it $(IMAGE_NAME)
