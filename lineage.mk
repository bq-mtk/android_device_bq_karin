#
# Copyright 2020 The LineageOS Project.
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
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit from karin device
$(call inherit-product, device/bq/karin/device.mk)

# Inherit from common device
$(call inherit-product, device/bq/mt8163-common/mt8163.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit languages full.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := bq
PRODUCT_DEVICE := karin
PRODUCT_NAME := lineage_karin
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris M8
PRODUCT_MANUFACTURER := bq

PRODUCT_GMS_CLIENTID_BASE := android-bq

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="ryu-user 8.0.0 OPR1.170623.032 4397478 release-keys" \
        PRODUCT_NAME="Aquaris_M8" \
        TARGET_DEVICE="Aquaris_M8"

BUILD_FINGERPRINT := google/ryu/dragon:8.0.0/OPR1.170623.032/4397478:user/release-keys
