[![cdvv7788](https://circleci.com/gh/cdvv7788/kubernetes-project4.svg?style=svg)](https://github.com/cdvv7788/kubernetes-project4)

## Project Overview

This projects configures and runs a given `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).
There are several scripts to do this:
* `app.py` contains the application code
* `run_docker.sh` contains a script to start the application in a docker container, exposed at port 8000
* `run_kubernetes.sh` contains a script to start the container in a kubernetes cluster. You will need to have minikube active for this to work. 

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
