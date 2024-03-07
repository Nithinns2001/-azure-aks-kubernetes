$ACR_NAME='acrdemo2ssnit'
$SERVICE_PRINCIPAL_NAME='acr-sp-demo'
$ACR_REGISTRY_ID=$(az acr show --name $ACR_NAME --query id --output tsv)
 
$SP_PASSWD=$(az ad sp create-for-rbac --name http://$SERVICE_PRINCIPAL_NAME --scopes $ACR_REGISTRY_ID --role acrpull --query password --output tsv)
$SP_APP_ID=$(az ad app list --display-name http://$SERVICE_PRINCIPAL_NAME --query [].appId --output tsv)

#password : aco8Q~ApMmUINX69kbcaXyJQz0eWovcYoHJlAcJ~

##az ad sp credential reset --id 73445cd6-9e7a-4bfe-90f2-229bba6f72fa --query password --output tsv
## To reset password 

## principal id: Apllication id of role assignments