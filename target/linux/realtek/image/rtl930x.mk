# SPDX-License-Identifier: GPL-2.0-only

define Device/zyxel_xgs1250-12
  SOC := rtl9302
  UIMAGE_MAGIC := 0x93001250
  ZYXEL_VERS := ABWE
  DEVICE_VENDOR := Zyxel
  DEVICE_MODEL := XGS1250-12
  DEVICE_PACKAGES := kmod-hwmon-gpiofan kmod-thermal
  IMAGE_SIZE := 13312k
  KERNEL_INITRAMFS := \
	kernel-bin | \
	append-dtb | \
	gzip | \
	zyxel-vers | \
	uImage gzip
endef
TARGET_DEVICES += zyxel_xgs1250-12
define Device/eight_port
  SOC := rtl9302
  UIMAGE_MAGIC := 0x93000000
  DEVICE_VENDOR := None
  DEVICE_MODEL := eight_port
  IMAGE_SIZE := 31744k
  KERNEL_INITRAMFS := \
	kernel-bin | \
	append-dtb | \
	gzip | \
	uImage gzip
endef
TARGET_DEVICES += eight_port
