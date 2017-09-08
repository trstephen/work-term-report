#!/bin/bash
#
# Renames `wt_template` to `something_else` across the project.
#

NEW_NAME=$1

if [ -z $NEW_NAME ]; then
    echo "No name passed in :("
    echo ""
    echo "Usage: `basename -- $0` [new name]"
    exit 1
fi

OLD_NAME="wt_template"

cd template

# Change in-file references
# `sed` format is BSD (OSX) specific. Probably fails with GNU `sed` ¯\_(ツ)_/¯
sed -i '' "s/$OLD_NAME.bib/$NEW_NAME.bib/g" $OLD_NAME.tex # `"` needed to do variable evaluation
sed -i '' "s/$OLD_NAME/$NEW_NAME/g" makefile

# Rename files
mv -v $OLD_NAME.tex $NEW_NAME.tex
mv -v $OLD_NAME.bib $NEW_NAME.bib
