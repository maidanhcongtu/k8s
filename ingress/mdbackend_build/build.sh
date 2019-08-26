#delete existing deployment on gcp
kubectl delete -f CreateDeployment.yaml

#build image
docker build -t mdbackend .

#Tag image
docker tag mdbackend asia.gcr.io/mhdanh-hello-kubernete/mdbackend

#Push image
docker push asia.gcr.io/mhdanh-hello-kubernete/mdbackend

#Create Deployment
kubectl apply -f CreateDeployment.yaml
