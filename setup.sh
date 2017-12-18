#!/bin/sh
. $(dirname $0)/path.sh
test -z $BUILD_DIR && exit 127

if [ -f "$DATA_DIR/${PACKAGE}_${VERSION_BASE}.orig.tar.gz" ]; then :; else
  echo "Error: $DATA_DIR/${PACKAGE}_${VERSION_BASE}.orig.tar.gz not found"
  exit 127
fi

rm -rf $BUILD_DIR
set -x

mkdir -p $(dirname $BUILD_DIR)
cd $(dirname $BUILD_DIR)
cp -p $DATA_DIR/${PACKAGE}_${VERSION_BASE}.orig.tar.gz .
tar zxf ${PACKAGE}_${VERSION_BASE}.orig.tar.gz
cp -frp $SCRIPT_DIR/debian $BUILD_DIR
