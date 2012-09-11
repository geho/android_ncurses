LOCAL_PATH:= $(call my-dir)

# ========================================================
# libmenu.so
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	m_attribs.c \
	m_cursor.c \
	m_driver.c \
	m_format.c \
	m_global.c \
	m_hook.c \
	m_item_cur.c \
	m_item_nam.c \
	m_item_new.c \
	m_item_opt.c \
	m_item_top.c \
	m_item_use.c \
	m_item_val.c \
	m_item_vis.c \
	m_items.c \
	m_new.c \
	m_opts.c \
	m_pad.c \
	m_pattern.c \
	m_post.c \
	m_req_name.c \
	m_scale.c \
	m_spacing.c \
	m_sub.c \
	m_trace.c \
	m_userptr.c \
	m_win.c

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

LOCAL_MODULE:= libmenu
LOCAL_PRELINK_MODULE := false
LOCAL_SHARED_LIBRARIES := libdl libncurses

LOCAL_MODULE_TAGS := eng

include $(BUILD_SHARED_LIBRARY)

# ========================================================
include $(call all-makefiles-under,$(LOCAL_PATH))
