# ma-fermisurfer
FermiSurfer Debian Package

## How to prepare source files for fermisurfer package

1. ソースファイルの準備 (ホスト上で)

        VERSION=1.10.0
        cd $HOME/vagrant/data/src
        wget https://ja.osdn.net/projects/fermisurfer/downloads/68420/fermisurfer-$VERSION.tar.gz
        tar zxvf fermisurfer-$VERSION.tar.gz
        mv -f fermisurfer-$VERSION fermisurfer_$VERSION
        tar zcvf fermisurfer_$VERSION.orig.tar.gz fermisurfer_$VERSION
