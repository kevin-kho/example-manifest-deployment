helm template istio-base istio/base -n istio-system --version 1.17.2 -f values.yaml > generated.yaml
./manifest-seperator generated.yaml
