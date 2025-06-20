#!/bin/bash

# Check if Zen Browser exists
if [ -f "/mnt/c/Program Files/Zen Browser/zen.exe" ]; then
    "/mnt/c/Program Files/Zen Browser/zen.exe" "$@"
else
    # Fall back to Edge
    "/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" "$@"
fi
