# os-set.net

netboot.xyz 国内定制版

# 使用方法 （托管于MoeChuang的实例）

首先 你得搞个ipxe

## 下载ipxe镜像（有ipxe可以直接跳过）

https://boot.os-set.net/

在这里抓一个和你的设备兼容的iPXE Bootloaders

然后用这个镜像启动你的设备

## 配置网络

```
dhcp
```

或

```
set net0/ip <ip>
set net0/netmask <netmask>
set net0/gateway <gateway>
set dns <nameserver>
ifopen net0
```

然后

## 链式加载

```
chain --autofree https://boot.os-set.net
```

就没问题了

# 自行编译托管

你得先安装git 和 docker

```bash
git clone https://github.com/netbootxyz/netboot.xyz.git /opt/netboot.xyz

cp ./user_overrides.yml /opt/netboot.xyz

cd /opt/netboot.xyz

docker build -t localbuild -f Dockerfile .
docker run --rm -it -v $(pwd):/buildout localbuild
```

等这些全跑完没报错，就已经处理完成了，生成的那些文件在
`/opt/netboot.xyz/buildout`，把他们随便用caddy或者nginx之类的托管一下就搞定了