image:
	docker build -t codekoala/skydns .

run:
	docker run -ti --rm -p 172.17.42.1:53:53/udp --name skydns codekoala/skydns -domain docker
