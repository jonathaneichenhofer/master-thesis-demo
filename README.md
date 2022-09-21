# microservices-kubernetes-AWS-EKS
This repository contains an adaptation of the following app https://github.com/ewolff/microservice-kubernetes created and maintained by https://github.com/ewolff

The original version, is a microservices example written in java and prepared to deploy on kubernetes using minikube. The only change on the adaptation is for been deployed on AWS EKS service (the cloud kubernetes service) Only adding one script to upload the images to the ECR service and other yaml script to create the deployment on the EKS cluster.

As the original version, it has 3 services:
- `Order` to process orders.
- `Customer` to handle customer data.
- `Catalog` to handle the items in the catalog.

Requirements
-----------
- AWS account to deploy the project
- Install the [kubectl tool](https://kubernetes.io/docs/tasks/tools/)
- Install [docker desktop](https://docs.docker.com/desktop/install/windows-install/)

How to run
----------
Until now you need to create the ECR repositories and the EKS cluster and node-groups by hand. In the future it's planned to include a cloudformation stack to automatice the process.

After creating that resources, excute `.\mvnw clean package` to build the images.
The next step is to edit the docker-build-AWS file to address your ECR repositories and execute it to upload the images.
Then, create the EKS cluster and the node-groups with the correct roles and deploy the app on it using `kubectl create -f microservices-AWS-EKS.yaml`.
Finally it's necessary to modify the security group of the Ec2 instances that had been created to open the 80 port in the inbounce rules section.

To end drop the deployment, run `kubectl delete -f microservices-AWS-EKS.yaml`.

To find [further information](https://github.com/ewolff/microservice-kubernetes#readme)
