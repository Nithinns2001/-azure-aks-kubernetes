
docker build -t my-html-app .

az acr login --name <acr-name>

docker tag my-html-app <acr-name>.azurecr.io/my-html-app:latest

docker push <acr-name>.azurecr.io/my-html-app:latest
