IMAGE=carlosalgms/docker-node-slim-with-chromium

docker:
	docker build --rm -t $(IMAGE):latest .

run:
	docker run --rm $(IMAGE):latest
