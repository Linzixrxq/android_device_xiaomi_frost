# Наследование от базовой конфигурации AOSP / TWRP для архитектуры ARM64
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Наследование настроек устройства
$(call inherit-product, device/xiaomi/frost/device.mk)

# Официальные параметры идентификации смартфона POCO C40
PRODUCT_DEVICE := frost
PRODUCT_NAME := twrp_frost
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO C40
PRODUCT_MANUFACTURER := Xiaomi

# Идентификация сборки
PRODUCT_RELEASE_NAME := frost
