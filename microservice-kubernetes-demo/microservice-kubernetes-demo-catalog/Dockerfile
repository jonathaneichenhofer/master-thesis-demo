FROM openjdk:11.0.2-jre-slim
COPY target/microservice-kubernetes-demo-catalog-0.0.1-SNAPSHOT.jar .
USER root 
RUN apt-get update &&\ 
apt-get install -y curl
CMD /usr/bin/java -Xmx400m -Xms400m -jar microservice-kubernetes-demo-catalog-0.0.1-SNAPSHOT.jar
EXPOSE 8080