LOCAL_PATH:= $(call my-dir)

# ========================================================
# tic
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	tic.c \
	dump_entry.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DNDEBUG \
	--param max-inline-insns-single=1200

LOCAL_MODULE := tic
LOCAL_SHARED_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)

# ========================================================
# tic
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	toe.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DNDEBUG \
	--param max-inline-insns-single=1200

LOCAL_MODULE := toe
LOCAL_SHARED_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)

# ========================================================
# clear
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	clear.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DNDEBUG \
	--param max-inline-insns-single=1200

LOCAL_MODULE := clear
LOCAL_SHARED_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)

# ========================================================
# tput
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	tput.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DNDEBUG \
	--param max-inline-insns-single=1200

LOCAL_MODULE := tput
LOCAL_SHARED_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)

# ========================================================
# infocmp
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	infocmp.c \
	dump_entry.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DNDEBUG \
	--param max-inline-insns-single=1200

LOCAL_MODULE := infocmp
LOCAL_SHARED_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)

# ========================================================
# tset
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	tset.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DNDEBUG \
	--param max-inline-insns-single=1200

LOCAL_MODULE := tset
LOCAL_SHARED_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)

# ========================================================
include $(call all-makefiles-under,$(LOCAL_PATH))
