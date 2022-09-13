#################################################################
# Author: Horikian, Leonardo (leonardo.horikian@huawei.com)     #
# Team: Huawei Cloud Team Argentina                             #
# Description: Script to quickly install and configure kubectl  #
# Date: 13-September-2022                                       #
# Version: 1.0                                                  #
#################################################################
KUBECONFIG_PATH="/root" # path of the kubeconfig.json file
ACCESS_MODE="external"  # "internal" or "external"

cd /home
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv -f kubectl /usr/local/bin
mkdir -p $HOME/.kube
mv -f $KUBECONFIG_PATH/kubeconfig.json $HOME/.kube/config
kubectl version --short
kubectl config use-context $ACCESS_MODE
kubectl cluster-info
