#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/frost

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/frost

# A/B Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.jr510

# Свойства флеш-памяти и накопителей
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sys.sdcardfs=1

# Включаем TWRP
PRODUCT_PACKAGES += \
    twrp

# Копирование fstab и dtb
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.jlq:root/first_stage_mount.fstab \
    $(LOCAL_PATH)/fstab.jlq:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img

$(call inherit-product, vendor/twrp/config/common.mk)
