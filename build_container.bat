set DOCKER_IMAGE_TAG=gcc_build_container

docker build -t %DOCKER_IMAGE_TAG% -< gccAndGdb.Dockerfile
