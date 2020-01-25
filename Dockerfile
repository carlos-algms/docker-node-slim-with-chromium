FROM node:12-slim

RUN apt-get update \
		&& apt-get install --no-install-recommends --no-install-suggests -y \
			chromium \
		&& rm -rf /var/cache/debconf/*-old \
		&& rm -rf /usr/share/doc/* \
		&& rm -rf /var/lib/apt/lists/* \
		&& rm -rf /var/cache/apt/*

# Add Tini
ADD https://github.com/krallin/tini/releases/download/v0.18.0/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini

WORKDIR /app

ENV CHROME_BIN=/usr/bin/chromium \
		CHROME_PATH=/usr/lib/chromium/ \
		PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1 \
		PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium \
		CI=true \
		CONTINUOUS_INTEGRATION=true \
		DEBIAN_FRONTEND=noninteractive

ENTRYPOINT ["tini", "--"]
