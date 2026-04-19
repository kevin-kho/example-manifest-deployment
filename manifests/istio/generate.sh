ROOT=$PWD
BASE="$ROOT/base"
CNI="$ROOT/cni"
ISTIOD="$ROOT/istiod"
GATEWAY="$ROOT/gateways"

VERSION="1.17.2"
# VERSION="1.18.7"

cd $BASE
helm template istio-base istio/base -n istio-system --version $VERSION -f values.yaml > generated.yaml
$ROOT/manifest-seperator generated.yaml

cd $CNI
helm template istio-cni istio/cni -n kube-system --version $VERSION > generated.yaml
$ROOT/manifest-seperator generated.yaml

cd $ISTIOD
helm template istiod istio/istiod -n istio-system --version $VERSION -f values.yaml > generated.yaml
$ROOT/manifest-seperator generated.yaml

cd $GATEWAY
helm template istio-ingressgateway istio/gateway -n istio-system --version $VERSION -f values.yaml > generated.yaml
$ROOT/manifest-seperator generated.yaml
