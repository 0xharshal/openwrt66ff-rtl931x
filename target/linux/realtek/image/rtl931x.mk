# SPDX-License-Identifier: GPL-2.0-only

define Device/twentyeight_port
  SOC := rtl9312
  UIMAGE_MAGIC := 0x93100000
  DEVICE_VENDOR := None
  DEVICE_MODEL := twentyeight_port
  IMAGE_SIZE := 13376k
  KERNEL_INITRAMFS := \
	kernel-bin | \
	append-dtb | \
	lzma | \
	uImage lzma
endef
TARGET_DEVICES += twentyeight_port
