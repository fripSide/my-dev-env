ubuntu_version=$1

# docker build --build-arg UBUNTU_VERSION=$ubuntu_version -t ubuntu:$ubuntu_version .

docker buildx build --platform=linux/amd64 --build-arg UBUNTU_VERSION=$ubuntu_version ARCH=amd64 -t ubuntu-amd64:$ubuntu_version .
docker buildx build --platform=linux/arm64 --build-arg UBUNTU_VERSION=$ubuntu_version ARCH=arm64v8 -t ubuntu-arm64:$ubuntu_version .