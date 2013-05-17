#!/bin/sh

# Drops caches, freeing memory
sync; echo 3 > /proc/sys/vm/drop_caches
