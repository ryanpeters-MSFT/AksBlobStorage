# AKS using Blob Storage (CSI)

This sample demonstrates a simple AKS deployment uisng the Blob CSI storage driver and deploys a basic application with volume mounts for both NFS and Blobfuse storage drivers.

## Invocation

```powershell
# apply the deployment and PVCs
kubectl apply -f .\deployment.yaml -f .\pvc-nfs.yaml -f .\pvc-blobfuse.yaml
```

## Observations

- [POSIX-support](https://github.com/Azure/azure-storage-fuse/wiki/Blobfuse-Limitations-%7C-Differences-from-POSIX) - Blobfuse appears to have limited POSIX support because all files, by default, get mounted with 770 permissions. For example, commands such as `chmod` and `chown` will have no effect. 