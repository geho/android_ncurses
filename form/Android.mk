LOCAL_PATH:= $(call my-dir)

# ========================================================
# libform.so
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	f_trace.c \
	fld_arg.c \
	fld_attr.c \
	fld_current.c \
	fld_def.c \
	fld_dup.c \
	fld_ftchoice.c \
	fld_ftlink.c \
	fld_info.c \
	fld_just.c \
	fld_link.c \
	fld_max.c \
	fld_move.c \
	fld_newftyp.c \
	fld_opts.c \
	fld_pad.c \
	fld_page.c \
	fld_stat.c \
	fld_type.c \
	fld_user.c \
	frm_cursor.c \
	frm_data.c \
	frm_def.c \
	frm_driver.c \
	frm_hook.c \
	frm_opts.c \
	frm_page.c \
	frm_post.c \
	frm_req_name.c \
	frm_scale.c \
	frm_sub.c \
	frm_user.c \
	frm_win.c \
	fty_alnum.c \
	fty_alpha.c \
	fty_enum.c \
	fty_int.c \
	fty_ipv4.c \
	fty_num.c \
	fty_regex.c

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

LOCAL_MODULE:= libform
LOCAL_PRELINK_MODULE := false
LOCAL_SHARED_LIBRARIES := libdl libncurses

LOCAL_MODULE_TAGS := eng

include $(BUILD_SHARED_LIBRARY)

# ========================================================
include $(call all-makefiles-under,$(LOCAL_PATH))
