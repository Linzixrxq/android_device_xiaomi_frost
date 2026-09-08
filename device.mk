LOCAL_PATH := device/xiaomi/frost

# Архитектура виртуального A/B и динамических разделов
PRODUCT_VIRTUAL_AB_OTA := true

# Копирование fstab (Исправлен путь для recovery-in-boot)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.jlq:recovery/root/system/etc/recovery.fstab

# Настройки экрана и графического процессора Mali
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.hardware.egl=mali \
    ro.hardware.vulkan=pastel

# Дополнительные пакеты рекавери
PRODUCT_PACKAGES += \
    qcom_dec_health
