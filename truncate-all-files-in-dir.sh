#!/bin/bash

# Truncates all the files in a directory
#
# Usage: sh truncate-all-files-in-dir.sh {PARENT_FOLDER}
#
# Useful Why?
# If you want to truncate a bunch of log files quickly instead of deleting them

PARENT_FOLDER="${1}"

echo "Truncating files in the Parent Folder: '${PARENT_FOLDER}'"
FILES_TO_TRUNCATE=`find ${PARENT_FOLDER}/* -type f`
echo ""
echo "Truncating the Files:"
echo "${FILES_TO_TRUNCATE}"
echo ""

for line in ${FILES_TO_TRUNCATE}; do
    echo "Truncating file '${line}'"
	> ${line}
done

