docker build -t grimmauld/multi-client:latest -t grimmauld/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t grimmauld/multi-server:latest -t grimmauld/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t grimmauld/multi-worker:latest -t grimmauld/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push grimmauld/multi-client:latest
docker push grimmauld/multi-server:latest
docker push grimmauld/multi-worker:latest
docker push grimmauld/multi-client:$SHA
docker push grimmauld/multi-server:$SHA
docker push grimmauld/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/client-deployment client=grimmauld/multi-client:$SHA
kubectl set image deployments/server-deployment server=grimmauld/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=grimmauld/multi-worker:$SHA
