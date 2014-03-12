$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

#FERGY: Please, change this if You don't have GPS in device to:
#$(call inherit-product, build/target/product/generic_no_telephony.mk)
#####################################################################
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/rockchip/rk2928sdk/rk2928sdk-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/rockchip/rk2928sdk/overlay

LOCAL_PATH := device/rockchip/rk2928sdk

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/init-cwm.rc:root/init.rc \
    $(LOCAL_PATH)/rk292xnand_ko.ko:root/rk292xnand_ko.ko \
    $(LOCAL_PATH)/ueventd.rk2928board.rc:root/ueventd.rk2928board.rc \
    $(LOCAL_PATH)/ueventd.rc:root/ueventd.rc \
    


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_rk2928sdk
PRODUCT_DEVICE := rk2928sdk
