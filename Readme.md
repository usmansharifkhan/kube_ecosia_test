

Run *make* or *make help* to show help

- Running *make start* spawns a minikube cluster with ingress enabled. Builds a http-server docker image on top of 
  minikube cluster, then follows it by deploying the manifest files
- Running *make test* executes a curl command to test the ingress flow

The rest server is written in python using Falcon framework which is served through gunicorn. 
The kube deployment files are placed in the manifest folder
