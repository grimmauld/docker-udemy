docker build -t grimmauld/multi-client -f ./client/Dockerfile ./client
docker build -t grimmauld/multi-server -f ./server/Dockerfile ./server
docker build -t grimmauld/multi-worker -f ./worker/Dockerfile ./worker
docker push grimmauld/multi-client
docker push grimmauld/multi-server
docker push grimmauld/multi-worker
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=grimmauld/multi-server