build: Dockerfile
	docker build -t alex-klein-mlhw2 .

run: build
#	docker run --rm -it -v `pwd`:/home/jovyan/work alex-klein-mlhw2
	docker run -d --rm --name akmlhw2 -p 8888:8888 -v `pwd`:/home/jovyan/work alex-klein-mlhw2 start-notebook.sh --NotebookApp.token=''

stop:
	docker stop akmlhw2

terminal:
	docker run --rm -it -v `pwd`:/home/jovyan/work alex-klein-mlhw2 /bin/bash

clean:
	docker rmi alex-klein-mlhw2