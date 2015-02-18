LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := tinyxml2
LOCAL_ARM_MODE := arm

include $(LOCAL_PATH)/cflags.mk

LOCAL_C_INCLUDES := $(LOCAL_PATH)/..
LOCAL_SRC_FILES = ../tinyxml2.cpp

include $(BUILD_STATIC_LIBRARY)		# start building based on everything since CLEAR_VARS
