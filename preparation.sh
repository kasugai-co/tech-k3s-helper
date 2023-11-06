#!/bin/bash

# https://docs.k3s.io/installation/airgap
# Air-Gap Install
# Off-Line Install

ARCH=$(uname -m)
DUMMY_ID=dummy0
DUMMY_24=192.168.33


# Set ARCHs
case $ARCH in
    amd64)
        ARCH=amd64
        SUFFIX=
        K3S_BIN=k3s
        ;;
    x86_64)
        ARCH=amd64
        SUFFIX=
        K3S_BIN=k3s
        ;;
    arm64)
        ARCH=arm64
        SUFFIX=-${ARCH}
        K3S_BIN=k3s-${ARCH}
        ;;
    s390x)
        ARCH=s390x
        SUFFIX=-${ARCH}
        K3S_BIN=k3s-${ARCH}
        ;;
    aarch64)
        ARCH=arm64
        SUFFIX=-${ARCH}
        K3S_BIN=k3s-${ARCH}
        ;;
    arm*)
        ARCH=arm
        SUFFIX=-${ARCH}hf
        K3S_BIN=k3s-${ARCH}
        ;;
    *)
        fatal "Unsupported architecture $ARCH"
esac

# k3s copy
sudo cp $K3S_BIN /usr/local/bin/k3s
sudo chmod +x /usr/local/bin/k3s

# images copy
sudo mkdir -p /var/lib/rancher/k3s/agent/images/
sudo cp ./k3s-airgap-images-$ARCH.tar /var/lib/rancher/k3s/agent/images/

# dummy nic add option (DUMMY=true preparation.sh)
if [ $DUMMY ]; then
    sudo ip link add $DUMMY_ID type dummy
    sudo ip link set $DUMMY_ID up
    sudo ip addr add $DUMMY_24.254/31 dev $DUMMY_ID
    sudo ip route add default via $DUMMY_24.255 dev $DUMMY_ID metric 1000
fi
