IMAGE=carlosalgms/docker-slim-node-puppeteer

docker:
	docker build --rm -t $(IMAGE):latest .

run:
	docker run --rm $(IMAGE):latest
