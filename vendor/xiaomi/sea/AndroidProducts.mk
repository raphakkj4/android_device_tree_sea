# AndroidProducts.mk - Xiaomi Redmi Note 12S (sea) and Ocean

# Set product and device names dynamically based on the codename
ifeq ($(TARGET_DEVICE), sea)
    PRODUCT_NAME := sea
    PRODUCT_DEVICE := sea
else ifeq ($(TARGET_DEVICE), ocean)
    PRODUCT_NAME := ocean
    PRODUCT_DEVICE := ocean
else
    PRODUCT_NAME := unknown
    PRODUCT_DEVICE := unknown
endif

# BoardConfig path
BOARDCONFIG := device/xiaomi/$(PRODUCT_DEVICE)/BoardConfig.mk

# Product model
PRODUCT_MODEL := Xiaomi Redmi Note 12S

# Package file system and kernel
PRODUCT_PACKAGE_FILE_SYSTEM := true
PRODUCT_PACKAGE_KERNEL := true

# Defining that the sea-vendor.mk file will be used in the build
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/sea-vendor.mk
