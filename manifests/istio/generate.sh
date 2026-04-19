PWD=$PWD
BASE="$PWD/base"
CNI="$PWD/cni"
ISTIOD="$PWD/istiod"
# TODO: Gateways

VERSION="1.17.2"


cd $BASE
helm template istio-base istio/base -n istio-system --version $VERSION -f values.yaml > generated.yaml
$PWD/manifest-seperator generated.yaml

cd $CNI
helm template istio-cni istio/cni -n kube-system --version $VERSION > generated.yaml
$PWD/manifest-seperator generated.yaml

cd $ISTIOD
helm template istiod istio/istiod -n istio-system --version $VERSION -f values.yaml > generated.yaml
$PWD/manifest-seperator generated.yaml
