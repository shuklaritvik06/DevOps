# Kubernetes

- Kubernetes is a open source container orchestration tool. It helps us to manage the containers developed by google.

## Node and POD

Node is the worker machine, smallest unit of K8s is Pod. Pod is abstraction over container. Usually one application per pod. Each get its own IP.

Service is a permanent IP address that can be attached to each pod, lifecycle is not connected. Acts as a load balancer

Ingress is responsible for the forwarding of requests to the service.

ConfigMap is very useful for external configuration of application.

Secret use external secret data in base64 encoded.

StatefulSet for managing consistency during database interaction.
