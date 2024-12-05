# AKS using Blob Storage Driver (CSI)

This sample demonstrates a simple AKS deployment uisng the Blob CSI storage driver and deploys a basic application with volume mounts for both NFS and Blobfuse storage drivers.

## Invocation

```powershell
# create the AKS cluster (with blob CSI driver) and create deployment and PVCs
./setup.ps1
```

## Observations
- [POSIX-support](https://github.com/Azure/azure-storage-fuse/wiki/Blobfuse-Limitations-%7C-Differences-from-POSIX) - Blobfuse appears to have limited POSIX support because all files, by default, get mounted with 770 permissions. For example, commands such as `chmod` and `chown` will have no effect. 

## Links
- [Use Azure Blob storage Container Storage Interface (CSI) driver](https://learn.microsoft.com/en-us/azure/aks/azure-blob-csi?tabs=NFS)
- [Create and use a volume with Azure Blob storage in Azure Kubernetes Service (AKS)](https://learn.microsoft.com/en-us/azure/aks/azure-csi-blob-storage-provision?tabs=mount-nfs%2Csecret)
- [What is BlobFuse? - BlobFuse2](https://learn.microsoft.com/en-us/azure/storage/blobs/blobfuse2-what-is)