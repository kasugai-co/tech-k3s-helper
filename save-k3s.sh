#!/bin/bash

# for v1.28.2+k3s1

mkdir -p release/v1.28.2+k3s1
pushd release/v1.28.2+k3s1
curl -L -o k3s https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s
curl -L -o k3s-airgap-images-amd64.tar https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-amd64.tar
curl -L -o k3s-airgap-images-amd64.tar.gz https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-amd64.tar.gz
curl -L -o k3s-airgap-images-amd64.tar.zst https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-amd64.tar.zst
curl -L -o k3s-airgap-images-arm.tar https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-arm.tar
curl -L -o k3s-airgap-images-arm.tar.gz https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-arm.tar.gz
curl -L -o k3s-airgap-images-arm.tar.zst https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-arm.tar.zst
curl -L -o k3s-airgap-images-arm64.tar https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-arm64.tar
curl -L -o k3s-airgap-images-arm64.tar.gz https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-arm64.tar.gz
curl -L -o k3s-airgap-images-arm64.tar.zst https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-arm64.tar.zst
curl -L -o k3s-airgap-images-s390x.tar https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-s390x.tar
curl -L -o k3s-airgap-images-s390x.tar.gz https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-s390x.tar.gz
curl -L -o k3s-airgap-images-s390x.tar.zst https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-airgap-images-s390x.tar.zst
curl -L -o k3s-arm64 https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-arm64
curl -L -o k3s-armhf https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-armhf
curl -L -o k3s-images.txt https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-images.txt
curl -L -o k3s-s390x https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/k3s-s390x
curl -L -o sha256sum-amd64.txt https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/sha256sum-amd64.txt
curl -L -o sha256sum-arm.txt https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/sha256sum-arm.txt
curl -L -o sha256sum-arm64.txt https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/sha256sum-arm64.txt
curl -L -o sha256sum-s390x.txt https://github.com/k3s-io/k3s/releases/download/v1.28.2%2Bk3s1/sha256sum-s390x.txt
curl -L -o v1.28.2+k3s1.zip https://github.com/k3s-io/k3s/archive/refs/tags/v1.28.2+k3s1.zip
curl -L -o v1.28.2+k3s1.tar.gz https://github.com/k3s-io/k3s/archive/refs/tags/v1.28.2+k3s1.tar.gz
popd

