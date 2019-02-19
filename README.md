<img src="https://ma.issp.u-tokyo.ac.jp/wp-content/themes/materiapps/images/materiapps.svg" width=150>

# MateriApps Debian Package: FermiSurfer

### FermiSurfer: an application for visualization of Fermi surfaces

This application displays Fermi surfaces colored as a function of an arbitrary scalar quantities such as magnitude of Fermi velocities and superconducting gap.  It only requires a minimum set of data to draw Fermi surfaces. FermiSurfer provides a simple graphical user interface; the user can smoothly turn on/off the stereogram, nodal-lines, etc.

### Version

* 1.10.1-1 (19 Feb 2019)
 
### Provided packages

* fermisurfer

### Target distributions and architectures

* Debian stretch (amd64, i386)
* Debian jessie (amd64, i386)
* Debian wheezy (amd64, i386)

### For users

* How to install FermiSurfer

  1. Add MateriApps LIVE! apt repository to Debian [[English](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian-en)][[日本語](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian)]

  2. Install FermiFurfer

     ```
     suto apt-get install fermisurfer
     ```

### For developers

* How to prepare original source tarball

  ```
  VERSION=1.10.1
  FERMISURFER_DIR=69171
  wget https://ja.osdn.net/projects/fermisurfer/downloads/$FERMISURFER_DIR/fermisurfer-$VERSION.zip
  unzip fermisurfer-$VERSION.zip
  mv -f fermisurfer-$VERSION fermisurfer_$VERSION
  chmod -R go-w fermisurfer_$VERSION
  tar zcvf fermisurfer_$VERSION.orig.tar.gz fermisurfer_$VERSION
  rm -rf fermisurfer-$VERSION.zip fermisurfer_$VERSION
  ```

### Links
  
* [MateriApps LIVE! Home Page](http://cmsi.github.io/MateriAppsLive/)
* [MateriApps LIVE! Forum](https://github.com/cmsi/MateriAppsLive-forum/wiki) (Users Forum)
* [MateriApps LIVE! Wiki](https://github.com/cmsi/MateriAppsLive/wiki) (Documents and FAQ)
* [MateriApps LIVE!](https://ma.issp.u-tokyo.ac.jp/en/app/275) on MateriApps