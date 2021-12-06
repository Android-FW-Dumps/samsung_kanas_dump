#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sprd-sdhci.3/by-name/RECOVERY:11233280:275c2ea34eab45a01d522afb383e90802aaf2f03; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sprd-sdhci.3/by-name/KERNEL:5982208:e797888ef94e3aa4b1813aec2a802496eb0c9170 EMMC:/dev/block/platform/sprd-sdhci.3/by-name/RECOVERY 275c2ea34eab45a01d522afb383e90802aaf2f03 11233280 e797888ef94e3aa4b1813aec2a802496eb0c9170:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
