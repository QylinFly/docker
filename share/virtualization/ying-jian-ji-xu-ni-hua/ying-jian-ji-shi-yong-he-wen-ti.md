## 描述原来的虚拟化我们怎么用的

```
比如现在我们有30G数据，我们现在要组一个Hadoop集群来跑一下算法分析一下这批数据。分配了两台配置很好的机架式服务器，
单机内存128G,5个CPU每个CPU32核心可能是志强处理器。我们组成一个10个系统的集群，那我们要在每台机器虚拟出4个虚拟机，
如果是windows服务器，我们Vmware、Hyper-v去虚拟化一台机器--安装hadoop软件环境--复制出另外七台虚拟机--设置每台机器网络环境
--ssh免密码打通--然后上算法。
```

vm image

v-center image

hyper-v image


## 硬件级虚拟化的结构图

<figure>
    <img src="/assets/VirtualMachines.png" width="400" height="400"  alt="硬件级虚拟化">
    <figcaption>Image - 硬件级虚拟化</figcaption>
</figure>
