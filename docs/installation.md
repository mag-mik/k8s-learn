1. delete old (stackoverflow)
---
### Download and run installer

`powershell` run as admin

```shell
New-Item -Path 'c:\' -Name 'minikube' -ItemType Directory -Force
Invoke-WebRequest -OutFile 'c:\minikube\minikube.exe' -Uri 'https://github.com/kubernetes/minikube/releases/latest/download/minikube-windows-amd64.exe' -UseBasicParsing
```

* Add the minikube.exe binary to your PATH.
```shell
$oldPath = [Environment]::GetEnvironmentVariable('Path', [EnvironmentVariableTarget]::Machine)
if ($oldPath.Split(';') -inotcontains 'C:\minikube'){
[Environment]::SetEnvironmentVariable('Path', $('{0};C:\minikube' -f $oldPath), [EnvironmentVariableTarget]::Machine)
}
```
* reopen terminal

---
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
```shell
minikube delete --all
```

```shell
kubectl cluster-info
```