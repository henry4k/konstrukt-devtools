#!/bin/sh
cd "$(dirname $0)/devtools"
zip --recurse-paths \
    '../devtools.zip' '.' \
    --include '*.lua'

