LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# FERGY: We don't need all prebuilt at the moment
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
# FERGY: This is same as in BoardConfig.mk... Why is doubled here???
-include vendor/rockchip/rk2928sdk/AndroidBoardVendor.mk
