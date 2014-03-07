## Specify phone tech before including full_phone
#FERGY: @Sooraj, this is only for GSM version. If You don't have GSM, then use
# $(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
#########################################################################
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := rk2928sdk

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/rockchip/rk2928sdk/device_rk2928sdk.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rk2928sdk
PRODUCT_NAME := cm_rk2928sdk
PRODUCT_BRAND := iBall
PRODUCT_MODEL := slide 6318i
PRODUCT_MANUFACTURER := iBall
