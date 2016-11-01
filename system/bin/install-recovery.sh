#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9658368:01483faa796d46ca7b7de1c2df04181365f42c56; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8796160:89f1a48949eb0a54496d87168c7f6c2b5c51968c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 01483faa796d46ca7b7de1c2df04181365f42c56 9658368 89f1a48949eb0a54496d87168c7f6c2b5c51968c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
