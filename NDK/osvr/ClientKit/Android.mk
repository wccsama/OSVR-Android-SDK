LOCAL_PATH:=$(call my-dir)

OSVR_ROOT:=..

include $(LOCAL_PATH)/$(OSVR_ROOT)/shared.mk

include $(CLEAR_VARS)
LOCAL_MODULE:=osvrClientKit
LOCAL_SRC_FILES:=$(OSVR_LIBS_DIR)/libosvrClientKit.$(OSVR_LIB_SUFFIX)
LOCAL_SHARED_LIBRARIES:=osvrClient osvrCommon osvrUtil
LOCAL_EXPORT_C_INCLUDES:=$(OSVR_INCLUDES_DIR)
$(info LOCAL_EXPORT_C_INCLUDES $(LOCAL_EXPORT_C_INCLUDES))
include $(PREBUILT_$(OSVR_LIB_TYPE)_LIBRARY)
