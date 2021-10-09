#!/bin/bash
find . -type f -print0 | xargs -0 grep -i "$*" 2>/dev/null
