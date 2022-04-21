#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m51
PRODUCT_NAME := twrp_m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M515F
PRODUCT_MANUFACTURER := samsung

# Build info
BUILD_FINGERPRINT := "samsung/m51nsxx/m51:11/RP1A.200720.012/M515FXXS3CUI2:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=m51 \
    PRODUCT_NAME=m51 \
    PRIVATE_BUILD_DESC="m51nsxx-user-11-RP1A.200720.012-M515FXXS3CUI2-release-keys."

TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
