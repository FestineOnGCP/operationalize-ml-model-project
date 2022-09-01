# Operationalize-ml-model-project

## Project Summary

This project is a deployment of a Machine Learning model which has been trained to predict the cost of a house 
based on the input data that is feed into the model. 

## Instrunctions

### Instructions on how to run python script

To run the python script, run the commands below:
  1. python3 -m venv ~/.devops
  2. source ~/.devops/bin/activate
  3. make install
  4. wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
        chmod +x /bin/hadolint
  5. make lint
  6. python3 app.py

## File Explanation
  - Dockerfile: The instruction for creating the flask application docker images
  - Makefile: The setup script for installing python dependencies, linting, and testing
  - app.py: The flask application main source code file
  - config.yaml: The configuration for creating a kind cluster used for locally testing the application.
  - make_prediction.sh: The script that provied inputs to the running or deployed model and print the predicted price as an output
  - requirements.txt: The list of the project dependencies
  - run_docker.sh: The list of instructions for creating and testing a docker image
  - run_kubernetes.sh: The list of instructions for creating and deploying a pod to the kubernetes cluster
  - upload_docker.sh: The list of instructions which uploads a local image to docker hub
  - output_text_files/docker_out.txt: Logs from running the application as a docker container
  - output_text_files/kubernetes_out.txt: Logs from running the application as a pod
  - .circleci/config.yml: Circleci pipeline configuration for linting the application
  - model_data: The directory which contains the input data that will be load to make prediction by the running or deployed model


## Pipeline Build Status

[![FestineOnGCP](https://circleci.com/gh/FestineOnGCP/operationalize-ml-model-project.svg?style=svg)](https://app.circleci.com/pipelines/gh/FestineOnGCP/operationalize-ml-model-project/4/workflows/cd8296c1-76d4-445a-97f2-4fe619bfc0a3/jobs/4)
