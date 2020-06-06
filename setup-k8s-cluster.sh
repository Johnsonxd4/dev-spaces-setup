echo 'logging on your azure account...'
az login
echo 'creating resource group...'
az group create --name rg-kubernetes --location eastus
echo 'creating kubernetes cluster with 3 nodes...'
az aks create --resource-group rg-kubernetes --name cluster-kubernetes --node-count 2 --enable-addons monitoring --generate-ssh-keys
echo 'getting aks credentials...'
az aks get-credentials --resource-group rg-kubernetes --name cluster-kubernetes
echo 'trying to get nodes of cluster...'
kubectl get nodes
