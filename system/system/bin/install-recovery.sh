#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:876faa017258ff9fa0f718d6eb207fd1b27cae0d; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:5df6fae35a071017d5cbc667aeb4c168680ec89c EMMC:/dev/block/platform/bootdevice/by-name/recovery 876faa017258ff9fa0f718d6eb207fd1b27cae0d 67108864 5df6fae35a071017d5cbc667aeb4c168680ec89c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
