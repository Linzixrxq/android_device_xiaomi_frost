#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/frost

# Soong namespaces (указываем пути к вендорным модулям JLQ)
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/frost \
    hardware/jlq \
    vendor/jlq/jr510

# A/B Boot Control HAL (для работы со слотами A и B на Virtual A/B)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.jr510

# Свойства флеш-памяти и накопителей
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sys.sdcardfs=1

# Включаем сам TWRP и подключаем общий конфиг TeamWin
PRODUCT_PACKAGES += \
    twrp

$(call inherit-product, vendor/twrp/config/common.mk)
