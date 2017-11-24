## 将软件打包成标准化的单元进行开发，发货和部署

容器映像是一个软件的轻量级独立可执行软件包，包含运行所需的所有内容：代码，运行时，系统工具，系统库，设置。

无论环境如何，集装箱化的软件都可以运行在Linux和Windows应用程序上。

容器将软件与其周围环境隔离开来，例如开发环境和登台环境之间的差异，并有助于减少在同一基础架构上运行不同软件的团队之间的冲突。


<figure>
    <img src="/assets/about-docker.png" width="700"   alt="Docker">
    <figcaption>Image - Docker</figcaption>
</figure>


| 轻量级 | 标准 | 安全 |
| :---: | :---: | :---: |
| 在一台机器上运行的Docker容器共享该机器的操作系统内核;他们立即开始，并使用更少的计算和内存。图像是从文件系统层构建的，并共享公共文件。这最大限度地减少了磁盘使用，图像下载速度更快。 | Docker容器基于开放标准，可运行在所有主要Linux发行版，Microsoft Windows以及包括虚拟机，裸机和云中的任何基础架构上。 | Docker容器将应用程序彼此隔离并从底层基础架构中分离出来。Docker提供了最强大的默认隔离功能，可以将应用程序问题限制在一个容器中，而不是整个机器上。 |

## Docker引擎

<figure>
    <img src="/assets/engine-components-flow.png" width="600"  alt="Docker引擎">
    <figcaption>Image - Docker引擎</figcaption>
</figure>




## Docker体系结构

<figure>
<img src="/assets/Docker体系结构.svg" width="800" alt="Docker体系结构">
<figcaption>Image - Docker体系结构</figcaption>
</figure>

## [Docker安装](https://docs.docker.com/engine/installation/#supported-platforms)

[https://docs.docker.com/engine/installation/#supported-platforms](https://docs.docker.com/engine/installation/#supported-platforms)


## [如何开始](/share/examples/nginx/README.md "如何开始")

[如何开始,我们从一个nginx服务器例子开始](/share/examples/nginx/README.md "如何开始")

## [在Docker中管理数据](https://docs.docker.com/engine/admin/volumes/)

https://docs.docker.com/engine/admin/volumes/


## 容器基础镜像AlpineLinux

下面是这个页面的基本Docker命令列表，以及一些相关的命令，如果你想在继续之前探索一下。

```
**[terminal]    
docker build -t friendlyname .  # Create image using this directory's Dockerfile
docker run -p 4000:80 friendlyname  # Run "friendlyname" mapping port 4000 to 80
docker run -d -p 4000:80 friendlyname         # Same thing, but in detached mode
docker container ls                                # List all running containers
docker container ls -a             # List all containers, even those not running
docker container stop <hash>           # Gracefully stop the specified container
docker container kill <hash>         # Force shutdown of the specified container
docker container rm <hash>        # Remove specified container from this machine
docker container rm $(docker container ls -a -q)         # Remove all containers
docker image ls -a                             # List all images on this machine
docker image rm <image id>            # Remove specified image from this machine
docker image rm $(docker image ls -a -q)   # Remove all images from this machine
docker login             # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
docker push username/repository:tag            # Upload tagged image to registry
docker run username/repository:tag                   # Run image from a registry
```






