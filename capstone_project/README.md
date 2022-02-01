# DevOps Bootcamp Capstone Project
- [DevOps Bootcamp Capstone Project](#devops-bootcamp-capstone-project)
  - [Description](#description)
  - [1. Setup your development environment](#1-setup-your-development-environment)
    - [Repository](#repository)
  - [2. Containerize the application](#2-Hello-world-Containerize)
  - [3. My CI Pipeline](#3-my-pipeline)
  - [4. Update "Hello World!" to "Hello DevOps!"](#4-update-hello-world-to-hello-devops)

## Description
You'll find the documentation on how I did the implementation of the project


## Pre-requisites

* [Docker](https://docs.docker.com/desktop/) installed
  * `docker --version` should show the docker version
* [Git](https://github.com/git-guides/install-git) installed
  * `git --version` should show the git version
* [Node JS](https://nodejs.org/en/download/package-manager/)
  * `npm version` should show the node version
* Have a [github account](https://github.com/join)
* Code editor of your preference - [VS Code](https://code.visualstudio.com/download) recommended

## 1. Setup your development environment

### Repository
- Go to the github repository https://github.com/mune360/DevOps.git
- Fork the repository
NOTE: From here on, whenever we say repository , that refers to your forked repository.
- Clone the repository : `git clone git@github.com:<githubaccount>/DevOps.git`

## 2. Hello world Containerize 
- How to test :
  - `cd capstone_project/hello-world`
  - `docker-compose -f docker-compose.yml  up -d`
  - Open a browser and go to http://localhost:3000

## 3. My pipeline
- Pipeline Name : `capstone_project.yml`
- Tigger by : `push pull`

## 4. Update "Hello World!" to "Hello DevOps!"
- How to test :
  - Be sure to stop all running containers first
  - `cd capstone_project/`
  - `docker-compose -f docker-compose.yml  up -d`
  - Open a browser and go to http://localhost:3000
  - It should display the default layout
  - Connect to ansible_controller containers
    - `docker exec -w /home/ansible_controller/ansible_files/ -ti ansible_controller bash`
    - Run : `ansible-playbook -i inventory.ini playbook.yml`
  - Open a browser and go to http://localhost:3000
  - It should display "Hello DevOps!"


