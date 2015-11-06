docker_setup:
	docker build -f Dockerfile.setup -t owncloud:builder . && \
	docker run -v $(shell pwd)/src/:/src owncloud:builder && \
	cp config.php src/config/config.php && \
	docker build -f Dockerfile.apache -t owncloud:apache .

docker_run:
	docker run -d -p 8080:80 -v $(shell pwd)/src/:/src --name owncloud-apache owncloud:apache
