#!/bin/sh

docker build --tag=microservice-kubernetes-demo-apache apache
docker tag microservice-kubernetes-demo-apache 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:apache
docker push 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:apache

docker build --tag=microservice-kubernetes-demo-catalog microservice-kubernetes-demo-catalog
docker tag microservice-kubernetes-demo-catalog 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:catalog
docker push 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:catalog

docker build --tag=microservice-kubernetes-demo-customer microservice-kubernetes-demo-customer
docker tag microservice-kubernetes-demo-customer 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:customer
docker push 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:customer

docker build --tag=microservice-kubernetes-demo-order microservice-kubernetes-demo-order
docker tag microservice-kubernetes-demo-order 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:order
docker push 162892665763.dkr.ecr.eu-central-1.amazonaws.com/jonathaneichenhofer:order