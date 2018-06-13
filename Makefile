build:
	docker build -t jcrawler .

run: build
	docker run -i -t jcrawler

console: build
	docker run -i -t jcrawler bash
