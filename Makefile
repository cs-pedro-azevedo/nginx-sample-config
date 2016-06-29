cur-dir   := $(shell pwd)
run:
	docker run --name some-nginx -p 8080:80 -v $(cur-dir)/meu_site:/usr/share/nginx/html:ro -v $(cur-dir)/default.conf:/etc/nginx/conf.d/default.conf:ro -d nginx
delete: 
	docker rm -f `docker ps -a -q`
