build: Dockerfile
	docker build -t mlhw2 .

run: build
	docker run -d --rm --name mlhw2c -p 8888:8888 -v `pwd`:/home/jovyan/work mlhw2 start-notebook.sh --NotebookApp.token=''

stop:
	docker stop mlhw2c

terminal:
	docker run --rm -it -v `pwd`:/home/jovyan/work mlhw2 /bin/bash

clean:
	docker rmi mlhw2