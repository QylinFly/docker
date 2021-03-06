# 比较容器和虚拟机

容器和虚拟机具有相似的资源隔离和分配优势，但功能不同，因为容器虚拟化操作系统而不是硬件，容器更加便携和高效。

| 集装箱![](/assets/Containers.png) | 虚拟机![](/assets/VirtualMachines.png) |
| :---: | :---: |
| **以应用为中心** 容器是应用程序层的一个抽象，将代码和依赖关系打包在一起。多个容器可以在同一台机器上运行，并与其他容器共享操作系统内核，**每个容器在用户空间中作为孤立进程运行**。容器占用的空间少于虚拟机（容器图像的大小通常为几十MB），并且几乎立即启动。 | **以OS为中心** 虚拟机（VM）是将一台服务器变成多台服务器的物理硬件的抽象。管理程序允许多台虚拟机在单台机器上运行。**每个VM都包含一个操作系统的完整副本**，一个或多个应用程序，必需的二进制文件和库，占用数十GB。VM启动缓慢。 |

# 集装箱和虚拟机在一起

一起使用的容器和虚拟机在部署和管理应用程序方面提供了很大的灵活性。  


<figure>
    <img src="/assets/containers-vms-together.png" width="800" height="400"  alt="集装箱和虚拟机">
    <figcaption>Image - 集装箱和虚拟机</figcaption>
</figure>


