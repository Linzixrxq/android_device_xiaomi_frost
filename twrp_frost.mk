# Наследование 64-битной конфигурации AOSP (обязательно для JR510 / ARM64)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

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

# Переопределение системных свойств для корректной идентификации в TWRP
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=frost \
    PRODUCT_NAME=frost
