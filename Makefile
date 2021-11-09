ARCHS = arm64 arm64e

export TARGET = iphone:clang:latest

# export PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ColourMyDock13

ColourMyDock13_FILES = Tweak.xm
ColourMyDock13_LIBRARIES = sparkcolourpicker
ColourMyDock13_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk
