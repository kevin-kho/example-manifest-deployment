PWD=$PWD
BASE="$PWD/base"
CNI="$PWD/cni"
ISTIOD="$PWD/istiod"
# TODO: Gateways



for p in $BASE $CNI $ISTIOD; do
    cd $p
    ./cmd.sh
done
