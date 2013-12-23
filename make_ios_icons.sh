#!/bin/sh

if [ ! -f $1 ];
then
	echo "\nFile not found";
	exit;
fi

basename=$(basename $1)
rootCreateFolder="ios_icons"
workingDirectory=$(pwd)

dstDir=$workingDirectory/$rootCreateFolder
mkdir -p $dstDir

convert $1 -resize 29x29 $dstDir/AppIconSpotlight29x29.png
convert $1 -resize 58x58 $dstDir/AppIconSpotlight29x29@2x.png

convert $1 -resize 80x80 $dstDir/AppIconSpotlight40x40@2x.png

convert $1 -resize 57x57 $dstDir/AppIcon57x57.png
convert $1 -resize 114x114 $dstDir/AppIcon57x57@2x.png

convert $1 -resize 120x120 $dstDir/AppIcon60x60@2x.png

convert $1 -resize 29x29 $dstDir/AppIconSettings29x29.png
convert $1 -resize 58x58 $dstDir/AppIconSettings29x29@2x.png

convert $1 -resize 40x40 $dstDir/AppIconiPadSpotlight40x40.png
convert $1 -resize 80x80 $dstDir/AppIconiPadSpotlight40x40@2x.png

convert $1 -resize 50x50 $dstDir/AppIconSpotlight50x50.png
convert $1 -resize 100x100 $dstDir/AppIconSpotlight50x50@2x.png

convert $1 -resize 72x72 $dstDir/AppIconSpotlight72x72.png
convert $1 -resize 144x144 $dstDir/AppIconSpotlight72x72@2x.png

convert $1 -resize 76x76 $dstDir/AppIconSpotlight76x76.png
convert $1 -resize 152x152 $dstDir/AppIconSpotlight76x76@2x.png