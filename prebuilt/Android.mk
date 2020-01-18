#
# 2017 Bliss Roms - Adapted from Android-x86 Project
# Original Copyright (C) 2011-2015 The Android-x86 Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
LOCAL_PATH := $(call my-dir)

ifneq ($(filter tablet,$(PRODUCT_CHARACTERISTICS)),)

include $(CLEAR_VARS)
LOCAL_MODULE := Taskbar
LOCAL_MODULE_OWNER := BlissRom
LOCAL_SRC_FILES := priv-app/com.farmerbb.taskbar.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TaskbarSupport
LOCAL_MODULE_OWNER := BlissRom
LOCAL_SRC_FILES := priv-app/com.farmerbb.taskbar.support.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

endif
