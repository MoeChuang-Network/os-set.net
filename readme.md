## OS-Set.Net

您喜爱的操作系统尽在此处！

![os-set.net menu](https://os-set.net/images/os-set.net.gif)

### 引导程序下载

#### 组合的传统 (Legacy) 和 UEFI iPXE 引导程序

| Type | Bootloader | Description |
|------|------------|-------------|
|ISO| [os-set.net.iso](https://boot.os-set.net/ipxe/os-set.net.iso)| 用于 CD/DVD、虚拟 CD、DRAC/iLO、VMware 和 VirtualBox |
|USB| [os-set.net.img](https://boot.os-set.net/ipxe/os-set.net.img)| 用于创建USB启动|

#### 传统（PCBIOS）iPXE引导程序

| Type | Bootloader | Description |
|------|------------|-------------|
|Kernel| [os-set.net.lkrn](https://boot.os-set.net/ipxe/os-set.net.lkrn)|用于从GRUB/EXTLINUX引导|
|Floppy| [os-set.net.dsk](https://boot.os-set.net/ipxe/os-set.net.dsk)| 用于DRAC/iLO、VMware、VirtualBox等的虚拟磁盘|
|Padded Floppy| [os-set.net.pdsk](https://boot.os-set.net/ipxe/os-set.net.pdsk)| 用于DRAC/iLO、VMware、VirtualBox等的填充虚拟硬盘|
|DHCP| [os-set.net.kpxe](https://boot.os-set.net/ipxe/os-set.net.kpxe)| DHCP引导镜像文件，使用内置的iPXE网卡驱动程序|
|DHCP-undionly| [os-set.net-undionly.kpxe](https://boot.os-set.net/ipxe/os-set.net-undionly.kpxe)| DHCP引导镜像文件，如果您遇到网卡问题，请使用此文件|

#### UEFI iPXE 引导程序

| Type | Bootloader | Description |
|------|------------|-------------|
|DHCP| [os-set.net.efi](https://boot.os-set.net/ipxe/os-set.net.efi)| DHCP引导镜像文件，使用内置的iPXE网卡驱动程序|
|DHCP-snp| [os-set.net-snp.efi](https://boot.os-set.net/ipxe/os-set.net-snp.efi)| 使用支持简单网络协议（Simple Network Protocol, SNP）的EFI，尝试引导所有网络设备|
|DHCP-snponly| [os-set.net-snponly.efi](https://boot.os-set.net/ipxe/os-set.net-snponly.efi)| 使用支持简单网络协议（Simple Network Protocol, SNP）的EFI，仅从链式启动的设备引导|

#### ARM64 iPXE Bootloaders

| Type | Bootloader | Description |
|------|------------|-------------|
|DHCP| [os-set.net-arm64.efi](https://boot.os-set.net/ipxe/os-set.net-arm64.efi)| DHCP引导镜像文件，使用内置的iPXE网卡驱动程序|
|DHCP-snp| [os-set.net-arm64-snp.efi](https://boot.os-set.net/ipxe/os-set.net-arm64-snp.efi)| 使用支持简单网络协议（Simple Network Protocol, SNP）的EFI，尝试引导所有网络设备|
|DHCP-snponly| [os-set.net-arm64-snponly.efi](https://boot.os-set.net/ipxe/os-set.net-arm64-snponly.efi)| 使用支持简单网络协议（Simple Network Protocol, SNP）的EFI，仅从链式启动的设备引导|

#### Raspberry Pi iPXE 引导程序

| Type | Bootloader | Description |
|------|------------|-------------|
|USB/SD Card| [os-set.net-rpi4-sdcard.img](https://boot.os-set.net/ipxe/os-set.net-rpi4-sdcard.img)| Raspberry Pi 4 - USB/SD Card Image|
|DHCP-snp| [os-set.net-rpi4-snp.efi](https://boot.os-set.net/ipxe/os-set.net-rpi4-snp.efi)| Raspberry Pi 4 - EFI Image|

在每次构建 iPXE 时都会生成 SHA256 校验和，可以在[此处](https://boot.os-set.net/ipxe/os-set.net-sha256-checksums.txt)查看。

### 什么是Os-Set.Net ?

Os-Set为os-set.net的其中一个Patch，旨在为中国大陆用户提供良好的使用体验。

因为只是Patch，所有的源代码，请前往官方仓库获取。

如果您已经在网络上运行了 iPXE，可以随时通过以下命令访问 os-set.net:

在传统（PCBIOS）模式下:

    chain --autofree http://boot.os-set.net/ipxe/os-set.net.lkrn

在 UEFI 模式下:

    chain --autofree http://boot.os-set.net/ipxe/os-set.net.efi

您也可以通过 HTTPS 加载，但默认情况下，iPXE 的构建中并未编译 HTTPS 支持。上述命令将加载具有所有正确选项启用的 os-set.net 内核。

### 文档

咕咕咕。。。

和官方文档基本一致，只需要替换域名为boot.os-set.net

### Feedback

Feel free to open up an [issue](https://github.com/MoeChuang-Network/os-set.net/issues) on Github

### 鸣谢

本项目由 [@kwaitsing](https://github.com/kwaitsing) 提供维护

由 MoeChuang Network Limited 提供服务器以供本地镜像托管

由 [CloudFlare](https://www.cloudflare.com) 提供下载CDN加速支持