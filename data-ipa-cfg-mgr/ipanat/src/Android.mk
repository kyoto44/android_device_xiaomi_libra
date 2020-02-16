LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_HEADER_LIBRARIES := generated_kernel_headers
LOCAL_SRC_FILES := ipa_nat_drv.c ipa_nat_drvi.c

LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR)/lib64
LOCAL_MODULE_PATH_32 := $(TARGET_OUT_VENDOR)/lib
LOCAL_MODULE := libipanat
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
LOCAL_CFLAGS += \
    -O3 \
    -g0 \
    -Wno-constant-logical-operand \
    -Wno-format \
    -Wno-uninitialized \
    -Wno-unused-comparison \
    -Wno-unused-parameter \
    -Wno-writable-strings \
    -Wno-unused-variable

include $(BUILD_SHARED_LIBRARY)
