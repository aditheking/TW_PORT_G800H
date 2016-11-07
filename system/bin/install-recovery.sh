#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10520576:5f5d5cf9412973a834f6cb4b470a0c3e0cd97e1c; then
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9252864:ab3511a236493ff4cc704e3813f017324a533a17 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 5f5d5cf9412973a834f6cb4b470a0c3e0cd97e1c 10520576 ab3511a236493ff4cc704e3813f017324a533a17:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
