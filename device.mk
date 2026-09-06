LOCAL_PATH := device/xiaomi/frost

# Копирование recovery.fstab в рамдиск рекавери
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# Базовые свойства экрана и графики
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.hardware.egl=mali \
    ro.hardware.vulkan=pastel

# Дополнительные модули
PRODUCT_PACKAGES += \
    qcom_dec_health
