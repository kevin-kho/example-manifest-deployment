helm template istio-base istio/base -n istio-system --version 1.17.2 --set base.enableCRDTemplates=true > generated.yaml
