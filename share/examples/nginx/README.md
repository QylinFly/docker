
# 拉去镜像
    
    docker pull nginx:1.13.7-alpine
    
    // docker 未启动
    localhost:~ qylinqylin$ docker pull nginx:1.13.7-alpine
    Warning: failed to get default registry endpoint from daemon (Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?). Using system default: https://index.docker.io/v1/
    Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
    
    
    // 正在加载
    localhost:~ qylinqylin$ docker pull nginx:1.13.7-alpine
    1.13.7-alpine: Pulling from library/nginx
    b1f00a6a160c: Pull complete 
    893ab8d8734b: Downloading 2.817 MB/4.778 MB
    5bd0e3e256d9: Download complete 
    79c4e9920d30: Download complete 
    
    // 加载完成
    localhost:~ qylinqylin$ docker pull nginx:1.13.7-alpine
    1.13.7-alpine: Pulling from library/nginx
    b1f00a6a160c: Pull complete 
    893ab8d8734b: Pull complete 
    5bd0e3e256d9: Pull complete 
    79c4e9920d30: Pull complete 
    Digest: sha256:f1ca87d9adb678b180c31bf21eb9798b043c22571f419ed844bca1d103f2a2f7
    Status: Downloaded newer image for nginx:1.13.7-alpine