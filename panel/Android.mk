LOCAL_PATH:= $(call my-dir)

# ========================================================
# libpanel.so
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	panel.c \
	p_above.c \
	p_below.c \
	p_bottom.c \
	p_delete.c \
	p_hide.c \
	p_hidden.c \
	p_move.c \
	p_new.c \
	p_replace.c \
	p_show.c \
	p_top.c \
	p_update.c \
	p_user.c \
	p_win.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../ncurses \
	$(LOCAL_PATH)

LOCAL_CFLAGS += \
	-DHAVE_CONFIG_H \
	-DNDEBUG \
	-DXTSTRINGDEFINES \
	-fPIC \
	--param max-inline-insns-single=1200

LOCAL_MODULE:= libpanel
LOCAL_PRELINK_MODULE := false
LOCAL_SHARED_LIBRARIES := libdl libncurses

LOCAL_MODULE_TAGS := eng

include $(BUILD_SHARED_LIBRARY)

# ========================================================
include $(call all-makefiles-under,$(LOCAL_PATH))
