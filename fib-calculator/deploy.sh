docker build -t grimmauld/multi-client -f ./client/Dockerfile ./client
docker build -t grimmauld/multi-server -f ./server/Dockerfile ./server
docker build -t grimmauld/multi-worker -f ./worker/Dockerfile ./worker