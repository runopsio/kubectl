#!/bin/sh

#set -e

# Extract the base64 encoded config data and write this to the KUBECONFIG
echo "$KUBE_CONFIG_DATA" | base64 -di > /tmp/config
export KUBECONFIG=/tmp/config

bash -c "kubectl${KUBECTL_VERSION:+.${KUBECTL_VERSION}} $*"
