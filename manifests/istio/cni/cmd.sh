helm template istio-cni istio/cni -n kube-system --version 1.17.2 > generated.yaml
./manifest-seperator generated.yaml
