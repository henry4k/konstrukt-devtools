include config.mk

NAME = devtools

ARCHIVE_CONTENTS += README.md
ARCHIVE_CONTENTS += LICENSE
ARCHIVE_CONTENTS += meta.json
ARCHIVE_CONTENTS += $(wildcard *.lua **/*.lua)

include $(BUILD_TOOLS)/rules.mk
