build:
	./node_modules/.bin/coffee --compile --output ./lib ./src/*.coffee

install:
	npm install

start:
	node index.js

.PHONY: build install
