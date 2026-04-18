#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Device specific configs
$(call inherit-product, device/oppo/luwu/device.mk)

PRODUCT_RELEASE_NAME := luwu

PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PFFM10
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=PFFM10
