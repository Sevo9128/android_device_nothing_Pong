#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 15 AQ3A.240929.001 2509171451 release-keys" \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.240903.001/2509171451:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=Pong \
    SystemDevice=Pong \
    SystemName=Pong

# AVIUM_VERSION_APPEND_TIME_OF_DAY is a boolean flag to indicate
# whether to append time of day to the build date.
AVIUM_VERSION_APPEND_TIME_OF_DAY ?= true
# Maintainer
# AVIUM_MAINTAINER is a string that represents the maintainer of the build.
AVIUM_MAINTAINER ?= Sevo9128

# Settings
# Soc model name
AVIUM_SETTINGS_SOC_MODEL_NAME ?= Snapdragon_8+_Gen_1
# Device code name
AVIUM_SETTINGS_DEVICE_CODENAME ?= Pong

# GMS
# WITH_GMS is a boolean flag to indicate 
# whether to include Google Mobile Services (GMS) in the build.
WITH_GMS ?= false
# Google Sans
# Enable this to set default fonts to Google Sans.
# This also works when building vanilla, but you
# need to sync vendor/pixel/gsans repo.
TARGET_USES_GSANS := false
# LatinIMEGooglePrebuilt
# Only works on vanilla builds,
# GMS builds will use the Google IME from GMS.
TARGET_INCLUDE_GOOGLEIME ?= false
TARGET_GOOGLEIME_OVERRIDE_IME ?= false

# Spoof Props
# Set to true to enable spoofing fake props.
# For letting apps think they are running on a locked device.
AVIUM_FORCE_SET_FAKE_PROP ?= false

# Blur Effect
# The blur usually enabled on Android 16 QPR2.
# If the blur not enabled, set to true to force enable blur for SystemUI.
TARGET_FORCE_ENABLE_BLUR ?= true
