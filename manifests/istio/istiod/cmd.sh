helm template istiod istio/istiod -n istio-system --version 1.17.2 > generated.yaml
./manifest-seperator generated.yaml
