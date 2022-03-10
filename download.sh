#!/bin/sh
. $(dirname $0)/path.sh

if [ ${VERSION_BASE} = 2.0.0 ]; then
  FERMISURFER_DIR=71272
fi
if [ ${VERSION_BASE} = 2.1.0 ]; then
  FERMISURFER_DIR=71529
fi
if [ -f fermisurfer_${VERSION_BASE}.orig.tar.gz ]; then
  exit 127
fi
rm -f fermisurfer-${VERSION_BASE}.tar.gz
wget https://ja.osdn.net/projects/fermisurfer/downloads/$FERMISURFER_DIR/fermisurfer-${VERSION_BASE}.tar.gz
rm -rf fermisurfer_${VERSION_BASE}
mkdir fermisurfer_${VERSION_BASE}
tar zxvf fermisurfer-${VERSION_BASE}.tar.gz -C fermisurfer_${VERSION_BASE} --strip-component=1
COPYFILE_DISABLE=1 tar zcvf fermisurfer_${VERSION_BASE}.orig.tar.gz --exclude ".DS_Store" fermisurfer_${VERSION_BASE} 
rm -rf fermisurfer_${VERSION_BASE} fermisurfer-${VERSION_BASE}.tar.gz
