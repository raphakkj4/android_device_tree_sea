LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Set product and device names dynamically based on the codename
ifeq ($(TARGET_DEVICE), sea)
    LOCAL_MODULE := sea-vendor
else ifeq ($(TARGET_DEVICE), ocean)
    LOCAL_MODULE := ocean-vendor
else
    LOCAL_MODULE := unknown-vendor
endif

# Common configurations for the devices
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)
LOCAL_SRC_FILES := Android.mk

include $(BUILD_PREBUILT)
