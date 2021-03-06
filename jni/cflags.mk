# This file is included in all .mk files to ensure their compilation flags are in sync
# across debug and release builds.

# NOTE: this is not part of import_vrlib.mk because VRLib itself needs to have these flags
# set, but VRLib's make file cannot include import_vrlib.mk or it would be importing itself.

LOCAL_CFLAGS	:= -DANDROID_NDK
#LOCAL_CFLAGS	+= -Werror			# error on warnings
LOCAL_CFLAGS	+= -Wall
LOCAL_CFLAGS	+= -Wextra
LOCAL_CPLAGS 	+= -Werror=ignored-qualifiers
#LOCAL_CFLAGS	+= -Wlogical-op		# not part of -Wall or -Wextra
#LOCAL_CFLAGS	+= -Weffc++			# too many issues to fix for now
LOCAL_CFLAGS	+= -Wno-strict-aliasing		# TODO: need to rewrite some code
LOCAL_CFLAGS	+= -Wno-unused-parameter
LOCAL_CFLAGS	+= -Wno-missing-field-initializers	# warns on this: SwipeAction	ret = {}
LOCAL_CFLAGS	+= -Wno-multichar	# used in internal Android headers:  DISPLAY_EVENT_VSYNC = 'vsyn',
LOCAL_CFLAGS 	+= -std=gnu++11
LOCAL_CFLAGS 	+= -Wno-parentheses
LOCAL_CFLAGS 	+= -Wno-sign-compare
LOCAL_CFLAGS 	+= -Wno-unused-variable
LOCAL_CFLAGS 	+= -Wno-switch
LOCAL_CFLAGS 	+= -Wno-unused-but-set-variable
LOCAL_CFLAGS 	+= -Wno-deprecated-declarations
LOCAL_CFLAGS 	+= -Wno-unused-value
LOCAL_CFLAGS 	+= -Wno-unused-function
LOCAL_CFLAGS 	+= -Wno-literal-suffix
LOCAL_CFLAGS 	+= -Wno-write-strings
LOCAL_CPPFLAGS 	:= -Wno-type-limits
LOCAL_CPPFLAGS 	+= -Wno-invalid-offsetof
LOCAL_CPPFLAGS 	+= -DNIMBLE_TARGET_ANDROID=1
LOCAL_CPPFLAGS 	+= -frtti
LOCAL_CPPFLAGS	+= -fexceptions

#ifeq ($(OVR_DEBUG),1)
#  LOCAL_CFLAGS += -DOVR_BUILD_DEBUG=1 -O0 -g
#else
  LOCAL_CFLAGS += -O3
#endif
