DEVICE_PATH := device/xiaomi/frost

# Архитектура и платформа (JLQ JR510 / ARM64)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

TARGET_BOARD_PLATFORM := jr510

# Boot Header v3 (Android 11)
BOARD_BOOT_HEADER_VERSION := 3
BOARD_PAGE_SIZE := 4096

# Предкомпилированное ядро и DTB
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Смещения
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000000
BOARD_DTB_OFFSET := 0x00000000

# Командная строка ядра (Стоковая из vendor_boot)
BOARD_KERNEL_CMDLINE := security=selinux androidboot.hardware=jlq iommu.strict=0 firmware_class.path=/etc/firmware swiotlb=2048 rcu_nocbs=0-7 kpti=off rcupdate.rcu_expedited=1 earlycon=uart8250,mmio32,0x3450F000 console=jlqttyS1,115200n8 no_console_suspend loglevel=4 buildvariant=user androidboot.selinux=permissive

# Аргументы для mkbootimg
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_PAGE_SIZE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

# Динамические разделы и A/B
BOARD_SUPER_PARTITION_GROUPS := jlq_dynamic_partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_HAS_NO_SELECT_BUTTON := true

# Настройки TWRP
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
INPUT_EVENT_LOGGING := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_USE_TOOLBOX := true
