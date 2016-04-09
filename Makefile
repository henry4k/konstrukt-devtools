include config.mk
include $(BUILD_TOOLS)/tools.mk

NAME = devtools

ARCHIVE_CONTENTS += README.md
ARCHIVE_CONTENTS += LICENSE
ARCHIVE_CONTENTS += meta.json
ARCHIVE_CONTENTS += $(call rwildcard,'*.lua')

include $(BUILD_TOOLS)/rules.mk
