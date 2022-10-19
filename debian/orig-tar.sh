#!/bin/sh
VERSION=$2
TAR=../sisu-plexus_$VERSION.orig.tar.xz
DIR=sisu-plexus-$VERSION.orig

mkdir $DIR
tar -xf $3 --strip 2 -C $DIR
rm $3

XZ_OPT=--best tar -cJvf $TAR --exclude '.gitignore' --exclude '*.jar' --exclude 'doclava-style' --exclude 'leftovers' --exclude 'bin' $DIR
rm -Rf $DIR
