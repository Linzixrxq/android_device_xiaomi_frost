# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Dynamic partitions
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot control HAL для A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-bootloader \
    android.hardware.boot@1.1-service

# Копирование vendor-модулей ядра
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.ko,$(DEVICE_PATH)/recovery/root/vendor/lib/modules/1.1,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1)
