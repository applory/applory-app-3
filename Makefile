
#EXEC=./bin/apprun
EXEC=./bin/apprun_darwin

VERSION=1.0.0
IMAGE_NAME=apprun-app1

.PHONY: run
run:
	${EXEC} exec -c ./apprun.yaml -e ./apprun-profile.yaml

.PHONY: docker.build docker.clean docker.run 
docker.build: 
	docker build -t ${IMAGE_NAME}:${VERSION} -f ./Dockerfile ./

docker.clean: 
	-docker stop ${IMAGE_NAME}
	-docker rm ${IMAGE_NAME}
	-docker rmi ${IMAGE_NAME}:${VERSION}

docker.run: 
	docker run -d --name ${IMAGE_NAME} -p 9998:9998 ${IMAGE_NAME}:${VERSION}