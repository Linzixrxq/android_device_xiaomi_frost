LOCAL_PATH := device/xiaomi/frost

# Архитектура виртуального A/B и динамических разделов
PRODUCT_VIRTUAL_AB_OTA := true

# Копирование стокового fstab.jlq в путь, необходимый для TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.jlq:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# Настройки экрана и графического процессора Mali
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.hardware.egl=mali \
    ro.hardware.vulkan=pastel

# Дополнительные пакеты рекавери
PRODUCT_PACKAGES += \
    qcom_dec_health
