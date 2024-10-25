ubuntu_version=$1
arch=$2

# docker build --build-arg UBUNTU_VERSION=$ubuntu_version -t ubuntu:$ubuntu_version .
docker build --build-arg UBUNTU_VERSION=$ubuntu_version -t ubuntu-$arch:$ubuntu_version .