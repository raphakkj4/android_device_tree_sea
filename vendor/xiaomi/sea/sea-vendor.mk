# sea-vendor.mk - Vendor blobs for Xiaomi Redmi Note 12S (sea)

# Define the vendor folder path
VENDOR_PATH := vendor/xiaomi/sea

# Copy files to the corresponding directories (32-bit and 64-bit)

# 32-bit
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/lib/libcutils.so:$(TARGET_OUT_VENDOR)/lib/libcutils.so \
    $(VENDOR_PATH)/lib/liblog.so:$(TARGET_OUT_VENDOR)/lib/liblog.so \
    $(VENDOR_PATH)/lib/libutils.so:$(TARGET_OUT_VENDOR)/lib/libutils.so \
    $(VENDOR_PATH)/lib/libbinder.so:$(TARGET_OUT_VENDOR)/lib/libbinder.so

# 64-bit
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/lib64/libcutils.so:$(TARGET_OUT_VENDOR)/lib64/libcutils.so \
    $(VENDOR_PATH)/lib64/liblog.so:$(TARGET_OUT_VENDOR)/lib64/liblog.so \
    $(VENDOR_PATH)/lib64/libutils.so:$(TARGET_OUT_VENDOR)/lib64/libutils.so \
    $(VENDOR_PATH)/lib64/libbinder.so:$(TARGET_OUT_VENDOR)/lib64/libbinder.so

# Copy other directories

# Binaries (bin) - Add binaries if necessary
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/bin/*:$(TARGET_OUT_VENDOR)/bin/

# Configuration files (etc)
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/etc/*:$(TARGET_OUT_VENDOR)/etc/ \
    $(VENDOR_PATH)/etc/selinux/*:$(TARGET_OUT_VENDOR)/etc/selinux/

# Firmware (if needed)
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/firmware/*:$(TARGET_OUT_VENDOR)/firmware/

# Resources files (res)
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/res/*:$(TARGET_OUT_VENDOR)/res/

# Other directories (odm, overlay, etc)
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/odm/*:$(TARGET_OUT_VENDOR)/odm/ \
    $(VENDOR_PATH)/overlay/*:$(TARGET_OUT_VENDOR)/overlay/
