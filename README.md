# Huawei Cloud - CCE Service - Kubectl Install and Configure

## Description

The Shell Script allows to quickly install and configure kubectl with a CCE cluster.

## Preparation

Set the following variables in the script.
```
KUBECONFIG_PATH : Path of the kubeconfig.json file (Ej: "/root") - You need to download this file from the CCE console.
ACCESS_MODE : Public or Private Access Mode to the Kubernetes cluster ("external" or "internal")
```

## Execution

```
sh huaweicloud_cce_kubectl_setup.sh
```

Enjoy!
