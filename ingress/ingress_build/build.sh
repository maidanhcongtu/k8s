#Deploy ingress controller
kubectl delete -f IngressController.yaml
kubectl apply -f IngressController.yaml

#Setup loadbalancer ingress controller
kubectl delete -f LoadBalancer.yaml
kubectl apply -f LoadBalancer.yaml

#Setup CreateKubernetesIngressObject
kubectl delete -f IngressResources.yaml
kubectl apply -f IngressResources.yaml

