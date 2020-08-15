set DOCKER_IMAGE_TAG=gcc_build_container

rem docker run --rm -v %CD%:/workspace %DOCKER_IMAGE_TAG% /workspace/%1

docker run -v %CD%:/workspace -t %DOCKER_IMAGE_TAG% /workspace/%1