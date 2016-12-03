include config.mk
include $(BUILD_TOOLS)/tools.mk

ARCHIVE_CONTENTS += README.md
ARCHIVE_CONTENTS += LICENSE
ARCHIVE_CONTENTS += package.json
ARCHIVE_CONTENTS += $(call rwildcard,'*.lua')

include $(BUILD_TOOLS)/rules.mk
