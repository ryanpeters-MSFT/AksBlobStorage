$group = "rg-aks-blob"
$cluster = "blobcluster"

# create a group
az group create -n $group -l eastus2

# create a cluster with the blob storage driver enabled
az aks create -n $cluster -g $group --enable-blob-driver -c 1 

# authenticate
az aks get-credentials -n $cluster -g $group --overwrite-existing

# deploy the application and PVCs
kubectl apply -f .\deployment.yaml -f .\pvc-nfs.yaml -f .\pvc-blobfuse.yaml