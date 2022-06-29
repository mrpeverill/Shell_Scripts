#!/bin/bash

# This is meant to silently poke dropbox on my system where it goes to sleep all the time. Currently, dropbox starts but not silently.

if /home/peverill/.local/bin/dropbox.py running; then
    echo "Starting Dropbox..."
    /home/peverill/.local/bin/dropbox.py start & > /dev/null 2>&1
fi
