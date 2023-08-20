### Start cluster 
- Start docker desktop
- ```minikube start --driver=docker```
- To make docker the default driver: ```shell minikube config set driver docker```

- 
```shell
minikube start
```
- Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

---
### Interact with your cluster
```shell
kubectl get po -A
```  
```shell 
minikube dashboard
```
---
### Deploy App
<https://minikube.sigs.k8s.io/docs/start/> section 4

---
### Manage cluster
Delete all the minikube clusters:
>
```shell
minikube delete --all
```
```shell
kubectl cluster-info
```