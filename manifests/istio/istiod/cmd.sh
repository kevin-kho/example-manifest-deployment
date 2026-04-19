# helm template istiod istio/istiod -n istio-system --version 1.17.2 > generated.yaml
helm template istiod istio/istiod -n istio-system --version 1.17.2 -f values.yaml > generated.yaml
./manifest-seperator generated.yaml
