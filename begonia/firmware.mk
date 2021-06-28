LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),begonia)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/fw_images/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,fw_images/$(f)))

endif
