DEVICE_PATH := device/xiaomi/frost

ALLOW_MISSING_DEPENDENCIES := true

# Platform
TARGET_BOARD_PLATFORM := jr510
TARGET_BOOTLOADER_BOARD_NAME := frost

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# A/B & Recovery Flags
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
AB_OTA_UPDATER := true

# Список разделов A/B (критично для устранения ошибки сборки)
AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor \
    product \
    odm \
    system_ext \
    vbmeta_system

# Header & Sizes
BOARD_BOOT_HEADER_VERSION := 3
BOARD_PAGE_SIZE := 4096
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_PAGE_SIZE)

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_RAMDISK_USE_LZ4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_AVB_ENABLE := true

# Storage & Metadata
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USES_METADATA_PARTITION := true
TARGET_COPY_OUT_VENDOR := vendor
BOARD_ROOT_EXTRA_FOLDERS := cust

# UI & Display (Параметры Poco C40)
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_SCREEN_DENSITY := 320
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel0-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 1800
TW_MAX_BRIGHTNESS := 3514
TW_NO_SCREEN_BLANK := true

# Language & System
TW_DEFAULT_LANGUAGE := ru
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_TOOLBOX := true
TW_NO_HAPTICS := true
TW_EXCLUDE_APEX := true
TW_INCLUDE_CRYPTO := false

# Загрузка модулей тачскрина/дисплея (исправленный wildcard вместо вызова ls)
TW_LOAD_VENDOR_MODULES := $(wildcard $(DEVICE_PATH)/recovery/root/vendor/lib/modules/1.1/*.ko)
TW_LOAD_VENDOR_BOOT_MODULES := true

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
