ARG UBUNTU_VERSION 24.04
ARG ARCH amd64

FROM ${ARCH}/ubuntu:${UBUNTU_VERSION}

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install --no-install-recommends -y \
        # base packages \
        sudo ca-certificates cpio perl locales man less lsb-release openssl \
        # oh-my-zsh dependency \
        wget curl vim git zsh gawk \
        # remote access tools \
        rsync mosh openssh-client \
        # user tool packages \
        screen tmux zip unzip p7zip-full p7zip-rar nmap socat proxychains4 \
        # user tool packages2
        strace net-tools iproute2 \
        && apt-get clean && rm -rf /var/lib/apt/lists/*;

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install --no-install-recommends -y \
        # base build depends \
        build-essential gcc g++ \
        && apt-get clean && rm -rf /var/lib/apt/lists/*;

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install --no-install-recommends -y \
        # suggested packages \
        libtool gettext flex bison gdb pkg-config \
        # other build tools \
        make autoconf automake fakeroot \
        && apt-get clean && rm -rf /var/lib/apt/lists/*;

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get install --no-install-recommends -y \
        # LLVM world \
        cmake ninja-build clang \
        # pyenv dependency \
        make build-essential libssl-dev zlib1g-dev \
        libbz2-dev libreadline-dev libsqlite3-dev wget curl \
        libncursesw5-dev xz-utils libxml2-dev libffi-dev liblzma-dev \
        python3-pip python3-dev \
        && apt-get clean && rm -rf /var/lib/apt/lists/*;

COPY set_proxy.sh /root/set_proxy.sh
COPY unset_proxy.sh /root/unset_proxy.sh
COPY init.sh /root/init.sh
