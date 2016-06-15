#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15028224:266654fea69d1abc8fe8d5b4a9faaeba04721fdd; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12754944:85eb4691d1f5a5ee432e4657ebf9283990ca7a54 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 266654fea69d1abc8fe8d5b4a9faaeba04721fdd 15028224 85eb4691d1f5a5ee432e4657ebf9283990ca7a54:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
