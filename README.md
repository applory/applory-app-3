# Overview

This is an application created by Applory Studio, to demo the API mocking, schema validation function.

You can execute the below commands to build and run the application:

- `make run`: to run the application locally.
- `make docker.build`: to build the application into container image.
- `make docker.run`: to run the container.

For the "make run" command, it uses the executable apprun compiled for Linux OS. If you needs to run locally on MacOS arm64 CPU, please download the arm64 version of apprun and change "EXEC=./bin/apprun" in Makefile to the correct path. Don't overwrite ./bin/apprun file as it is Linux version and is used to build the docker image.

You can make changes to other file, or add your CI/CD files into this directory, except for below files/folders, as the changes could be overwritten by Applory Studio when you click the "Package" button:

- file names started with "apprun"
- flow
- flowNodes
- system
