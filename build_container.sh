DOCKER_IMAGE_TAG=gcc_build_container

docker build -t DOCKER_IMAGE_TAG -f gccAndGdb

docker run -it --rm -v ${PWD}:/workspace $DOCKER_IMAGE_TAG 