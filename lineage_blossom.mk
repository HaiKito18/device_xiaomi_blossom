#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

scr_resolution := 720
TARGET_SUPPORTS_BLUR := true
TARGET_ENABLE_BLUR := true

PRODUCT_NAME := lineage_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Add the following variables:

# Lunch banner maintainer variable
RISING_MAINTAINER="HaiKito"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Mediatek G25/35" \
    RisingMaintainer="HaiKito"

RISING_MAINTAINER := HaiKito

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := true

# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
WITH_GMS := false
