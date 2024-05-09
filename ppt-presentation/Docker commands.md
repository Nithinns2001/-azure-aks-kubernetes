docker build -t my-html-app .

az acr login --name

docker tag my-html-app .azurecr.io/my-html-app:latest

docker push .azurecr.io/my-html-app:latest

az acr build --image <image-name>:tag --registry <registryname> --file <dockerfilename> .
az acr build --image webfrontend:v1 --registry conacraks --file dockerfile .
