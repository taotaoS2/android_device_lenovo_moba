#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/lenovo/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/moba

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := moba

# Display
TARGET_SCREEN_DENSITY := 480

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineageos_moba_defconfig

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Touch
SOONG_CONFIG_NAMESPACES += MOTO_KONA_TOUCH
SOONG_CONFIG_MOTO_KONA_TOUCH := SINGLE_TAP_PATH
SOONG_CONFIG_MOTO_KONA_TOUCH_SINGLE_TAP_PATH := /sys/class/touchscreen/NVT-ts/single_click
TARGET_TAP_TO_WAKE_NODE := /sys/class/touchscreen/NVT-ts/double_click

# Inherit from the proprietary version
-include vendor/lenovo/moba/BoardConfigVendor.mk
