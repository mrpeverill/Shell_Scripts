#!/bin/bash

# If you save your emacs auto-save files in a separate directory (e.g. /tmp) this script will compare any auto-save files to any files on disk.

# This should really be done in python.

asdir=/tmp # Where your #autosaved-file.txt#'s go

echo "backup_name\t\t\tosize\tasize\totime\tatime"

for i in $asdir/#\!*; do
    ls $i
    IFS=""
    ostring=${i#"$asdir/#"}
    ostring=${ostring%"#"}
    ofile=`echo $ostring | tr "\!" "/"`
    echo $ofile
done
