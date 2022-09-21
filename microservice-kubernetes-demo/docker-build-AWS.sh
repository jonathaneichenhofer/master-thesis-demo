#!/bin/sh

docker build --tag=microservice-kubernetes-demo-apache apache
docker tag microservice-kubernetes-demo-apache 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservice-apache
docker push 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservice-apache:latest

docker build --tag=microservice-kubernetes-demo-catalog microservice-kubernetes-demo-catalog
docker tag microservice-kubernetes-demo-catalog 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservices-catalog
docker push 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservices-catalog:latest

docker build --tag=microservice-kubernetes-demo-customer microservice-kubernetes-demo-customer
docker tag microservice-kubernetes-demo-customer 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservices-customer
docker push 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservices-customer:latest

docker build --tag=microservice-kubernetes-demo-order microservice-kubernetes-demo-order
docker tag microservice-kubernetes-demo-order 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservices-order
docker push 291749393564.dkr.ecr.eu-central-1.amazonaws.com/microservices-order:latest