#!/bin/sh

docker build --tag=microservice-kubernetes-demo-apache apache
docker tag microservice-kubernetes-demo-apache 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:apache
docker push 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:apache

docker build --tag=microservice-kubernetes-demo-catalog microservice-kubernetes-demo-catalog
docker tag microservice-kubernetes-demo-catalog 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:catalog
docker push 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:catalog

docker build --tag=microservice-kubernetes-demo-customer microservice-kubernetes-demo-customer
docker tag microservice-kubernetes-demo-customer 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:customer
docker push 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:customer

docker build --tag=microservice-kubernetes-demo-order microservice-kubernetes-demo-order
docker tag microservice-kubernetes-demo-order 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:order
docker push 608842968837.dkr.ecr.eu-central-1.amazonaws.com/kubernetes-microservices:order