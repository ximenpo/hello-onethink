#! /bin/bash

CURR_DIR=$(cd `dirname $0`; pwd)
SRC_DIR=${CURR_DIR}/../simple-onethink/wwwroot
TAR_DIR=${CURR_DIR}/../web

rsync -a ${SRC_DIR}/Public/     ${TAR_DIR}/Public
rsync -a ${SRC_DIR}/Uploads/    ${TAR_DIR}/Uploads
