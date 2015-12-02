#!/bin/sh

#Usage: ./rsync-backup.sh <src> <dst>
# A check-able timestamp file will be written to src_dir/.rsync_timestamp and rsync will be run
# You can then script an alert to check for a recent .rsync_timestamp at the destination


RSYNC_OPTS="-avz"
RSYNC_SRC=$1
RSYNC_TARGET=$2

date +"%s" > ${RSYNC_SRC}/.rsync_timestamp

rsync ${RSYNC_OPTS} ${RSYNC_SRC} ${RSYNC_TARGET}
