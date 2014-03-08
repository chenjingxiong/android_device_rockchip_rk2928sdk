USE_CAMERA_STUB := true

# inherit from the proprietary version
# FERGY: this is needed only for full image, not for recovery as this is 
# "blobs" (vendor proprietary) files include
-include vendor/rockchip/rk2928sdk/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
#FERGY: platform is rk2928
TARGET_BOARD_PLATFORM := rk2928
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
# FERGY: this is needed for kitkat.... Compiler need to know cpu_variant
# or it will refuse to compile
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := rk2928sdk

BOARD_KERNEL_CMDLINE := console=ttyFIQ0 androidboot.console=ttyFIQ0 init=/init initrd=0x62000000,0x00160000 mtdparts=rk29xxnand:0x00002000@0x00002000(misc),0x00006000@0x00004000(kernel),0x00008000@0x0000a000(boot),0x00010000@0x00012000(recovery),0x00020000@0x00022000(backup),0x00040000@0x00042000(cache),0x00200000@0x00082000(userdata),0x00002000@0x00282000(kpanic),0x00100000@0x00284000(system),-@0x00384000(user) bootver=2013-01-17#1.28 firmware_ver=4.1.1 bootver=2012-12-14#1.22 firmware_ver=4.1.1
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384

# FERGY: @Sooraj, check this from working image by examining /proc/mtd!!!
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1048576
BOARD_FLASH_BLOCK_SIZE := 4096

#FERGY: This is for prebuilt kernel only... Once You get recovery working,
# We can replace this with original kernel, so leave it by then...
# prebuilt kernel causes recovery to not boot ........ 
TARGET_PREBUILT_KERNEL := device/rockchip/rk2928sdk/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/rockchip/rk2928sdk/releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/rockchip/rk2928sdk/releasetools/rk292x_ota_from_target_files

