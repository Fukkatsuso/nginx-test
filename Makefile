# https://egashira.dev/blog/nginx-try-files
# https://blog.kasei-san.com/entry/2021/05/21/101040
up:
	docker run -it --rm --name nginx-test \
		-v ${PWD}/nginx.conf:/etc/nginx/conf.d/default.conf \
		-v ${PWD}/webapp:/home/isucon/webapp \
		-p 8080:80 \
		nginx:latest nginx-debug -g 'daemon off;'
