# 操作系统级虚拟化的历史

1. 1982年：chroot，直到现在我们依然在使用的一个系统调用。这个系统调用会改变运行进程的工作目录，并且只能在这个目录里面工作。这种操作其实就是一种文件系统层的隔离。
2. 2000年：FreeBSD jail，真正意义上的第一个功能完整的操作系统级虚拟化技术。
3. 2005年：OpenVZ，这是linux平台上的容器化技术实现，同时也是LXC，即docker最初使用的容器技术核心实现。 
4. 2008年：LXC发布，这是docker最初使用的具体内核功能实现。 
5. 2013年：Docker发布，可以看出，docker本身是使用了LXC，同时封装了其他的一些功能。 Docker的成功，与其说是技术的创新，还不如说是一次组合式的创新。  

Docker所使用的技术也都不是新技术，它将这系列技术有机的组合到一起，并提供极致的用户体验，就产生了垮时代意义的产品。


<figure>
    <img src="/assets/Containers.png" width="400" height="400"  alt="docker虚拟化">
    <figcaption>Image - docker虚拟化</figcaption>
</figure>

