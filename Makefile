build-and-release:
	docker build -t cmrust/toolkit .
	docker push cmrust/toolkit:latest
