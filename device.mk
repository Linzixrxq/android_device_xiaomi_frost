#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/frost

# Platform Information 
PRODUCT_PLATFORM := frost

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/frost \
    hardware/jlq/jr510 \
    vendor/jlq/jr510
   
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl-wrapper \
    bootctrl.$(PRODUCT_PLATFORM)

PRODUCT_PACKAGES += \
    bootctrl.jr510

PRODUCT_BOOT_CONTROL_HAL := \
    bootctrl.jr510 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
    
# Use Sdcardfs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sys.sdcardfs=1

# --- ПОДКЛЮЧЕНИЕ TWRP (ДОБАВЛЕНО) ---
# Включаем базовые пакеты TWRP в сборку
PRODUCT_PACKAGES += \
    twrp

# Наследуем конфигурацию интерфейса и утилит TeamWin
$(call inherit-product, vendor/twrp/config/common.mk)

