# build image
docker build -t mypostgres .

# tag image
#docker tag mypostgres gcr.io/klara-practice/sample-postgres

# run
#docker run --name mydb -p 6543:5432 mypostgres

# deploy to k8s
#kubectl apply -f k8s.yaml