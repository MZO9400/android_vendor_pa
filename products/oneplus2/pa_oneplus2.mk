# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_oneplus2,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from oneplus2 device
$(call inherit-product, device/oneplus/oneplus2/device.mk)

# Inherit qualcomm common stuff
include device/qcom/common/common.mk

# Include paranoid stuff
include vendor/pa/main.mk

PRODUCT_NAME := pa_oneplus2
PRODUCT_DEVICE := oneplus2
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := OnePlus2
TARGET_VENDOR_DEVICE_NAME := OnePlus2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=OnePlus2 PRODUCT_NAME=OnePlus2

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=OnePlus/OnePlus2/OnePlus2:6.0.1/MMB29M/1447841200:user/release-keys \
    PRIVATE_BUILD_DESC="OnePlus2-user 6.0.1 MMB29M 15 dev-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := oneplus

endif
