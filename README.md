## Introduction
This program shows how to build an C++ appliction in docker container and debug using visual studio code. The example shown here is built in g++. 

Furthermore, this also shows how an application can be linked with library by giving the relative path.

## Objectives
There are multiple objectives of this project which are listed below:

   * To show how to setup visual studio code to build an application on a linux container;
   * To show how to debug an application running inside a container; and
   * To show how -rpath can be added into an linux.

## Prerequisite
   * Docker installed in your machine; and
   * Visual studio code.


## Steps for building and debuging the example application

   * Press Ctrl+Shift+b
   * Choose the option `Build container (Windows)`, if you are in windows
   * Choose the option `Build container (Linux)`, if you are in Linux or in the wsl linux with docker installed
   * Press Ctrl+Shift+b and select `g++ build in container` to build application in g++
   * After building application, press Ctrl+Shift+b and select `Prepare to debug` which starts a container for debugging application
   * Press the play icon and start debugging in the container