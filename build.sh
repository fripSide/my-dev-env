ubuntu_version=$1
arch=$2

# docker build --build-arg UBUNTU_VERSION=$ubuntu_version -t ubuntu:$ubuntu_version .
docker buildx create --use --name multi-arch-builder
docker buildx build --platform=linux/amd64,linux/arm64 --build-arg UBUNTU_VERSION=$ubuntu_version ARCH=$arch -t ubuntu-$arch:$ubuntu_version .