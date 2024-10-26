# Simple Dev Docker

A pre-built docker image based on the official Ubuntu Docker Image:  https://hub.docker.com/_/ubuntu  


	# x86
	docker run -it --name dev -h hy --privileged fripside2021/my-dev:amd64-24.04 bash
	# arm64
	docker run -it --name dev -h hy --privileged fripside2021/my-dev:arm64v8-24.04 bash


proxy configure:  

	https://www.yuque.com/fripside/rx1ngg/qno617#Afj9A


## Customized Container with zsh (Deprecated)  

A pre-built docker image of Ubuntu 20.04, with basic daily tools shipped with usual distributions  


	```
	docker run -it --name dev --privileged fripside2021/my-dev:latest bash

	# docker in docker配置
	docker run -v /var/run/docker.sock:/var/run/docker.sock -it --name dev --privileged fripside2021/my-dev:latest bash

	docker start dev
	```


### Exact things included

- Minimized Ubuntu 20.04 Server, with curl / wget / vim, without boot/X11/systemd stuffs

- Oh-My-ZSH & Misty Shell Environment (a modular zsh configurations) (https://github.com/NyaMisty/.misty_envconf_pub)

- Basic build environment: GNU suite: gcc/make/flex/bison/autoconf & LLVM suite: clang/cmake/ninja

- Python managed by Pyenv (2.7.13, 3.9.5)

### Caveat

- Build: Not including gcc-multilib

- Python: No Tkinter support, No xmlsec support

