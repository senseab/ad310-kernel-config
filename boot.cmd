setenv rootfs PARTUUID=5a2a87ed-02
setenv bootargs earlyprintk console=ttyS0,115200 init=/bin/init root=${rootfs} rootwait panic=10 ${extra}
setenv boot_normal ext4load mmc 0 \${fdt_addr_r} \${fdtfile}\;ext4load mmc 0 0x40008000 zImage\;bootz 0x40008000 - \${fdt_addr_r}
run boot_normal

