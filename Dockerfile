FROM node:alpine
RUN apk --no-cache add \
	make \
	gcc \
	g++ \
	mesa-dev \
	sdl-dev \
	dbus-dev \
	python \
	git

RUN mkdir /app/
COPY . /app/

WORKDIR /app/
RUN npm i -g npm@latest-4
RUN npm install
RUN npm run build:web
ENTRYPOINT python -m SimpleHTTPServer 8080
