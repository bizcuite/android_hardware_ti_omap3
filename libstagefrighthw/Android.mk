LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    TIOMXPlugin.cpp

LOCAL_CFLAGS := $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_C_INCLUDES:= \
        $(TOP)/frameworks/base/include/media/stagefright/openmax \
        $(TOP)/frameworks/base/include \
	$(TOP)/frameworks/base/include/media/stagefright

LOCAL_SHARED_LIBRARIES :=       \
        libbinder               \
        libutils                \
        libcutils               \
        libui                   \
        libdl                   \

LOCAL_MODULE := libstagefrighthw
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

