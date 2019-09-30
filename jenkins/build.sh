#Deploy ingress controller
kubectl delete -f jenkins-deployment.yaml
kubectl delete -f jenkins-service.yaml

# apply
kubectl apply -f jenkins-deployment.yaml
kubectl apply -f jenkins-service.yaml