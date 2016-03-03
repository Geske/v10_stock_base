#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:34011136:d4be67f0713053b9a75c88a5d2e25d53474f8bc9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:32684032:2e8cef4fdbd2a5dcabaff0ef9d2df2c836c1cc9e EMMC:/dev/block/bootdevice/by-name/recovery d4be67f0713053b9a75c88a5d2e25d53474f8bc9 34011136 2e8cef4fdbd2a5dcabaff0ef9d2df2c836c1cc9e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
