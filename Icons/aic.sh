#!/bin/bash
echo "Genrating Android icons"
sleep 0

#printf "%q" "$(pwd)" | pbcopy && echo
#echo "`pbpaste`"
#sleep 0

f="${1}/images/"
echo "${f}"
sleep 0

#File names
if [ $1 = "Files-Icon" ]; then
	#File Icon
	bg="ic_background_filemanager.png"
	fg="ic_foreground_filemanager.png"
	li="ic_launcher_filemanager.png"
	#di="sipsic_launcher.xml"
else
	#Other Icon
	bg="ic_background.png"
	fg="ic_foreground.png"
	li="ic_launcher.png"
	#di="sipsic_launcher.xml"
fi

#Legacy icon Path
#mipmap_google_play_legacy_path="sipsandroid/legacy/mipmap-google\ play/"
mipmap_hdpi_legacy_path="android/legacy/mipmap-hdpi/"
mipmap_mdpi_legacy_path="android/legacy/mipmap-mdpi/"
mipmap_xhdpi_legacy_path="android/legacy/mipmap-xhdpi/"
mipmap_xxhdpi_legacy_path="android/legacy/mipmap-xxhdpi/"
mipmap_xxxhdpi_legacy_path="android/legacy/mipmap-xxxhdpi/"

#Dynimac icon Path
#mipmap-anydpi_dynimac_path="sipsandroid/dynimac/mipmap-anydpi/"
mipmap_hdpi_dynimac_path="android/dynimac/mipmap-hdpi/"
mipmap_mdpi_dynimac_path="android/dynimac/mipmap-mdpi/"
mipmap_xhdpi_dynimac_path="android/dynimac/mipmap-xhdpi/"
mipmap_xxhdpi_dynimac_path="android/dynimac/mipmap-xxhdpi/"
mipmap_xxxhdpi_dynimac_path="android/dynimac/mipmap-xxxhdpi/"

#Make Legacy icon Folder
#mkdir -p $mipmap_google_play_legacy_path
mkdir -p $f$mipmap_hdpi_legacy_path
mkdir -p $f$mipmap_mdpi_legacy_path
mkdir -p $f$mipmap_xhdpi_legacy_path
mkdir -p $f$mipmap_xxhdpi_legacy_path
mkdir -p $f$mipmap_xxxhdpi_legacy_path
#echo "Done"

#Make Dynimac icon Folder
#mkdir -p $mipmap_anydpi_dynimac_path
mkdir -p $f$mipmap_hdpi_dynimac_path
mkdir -p $f$mipmap_mdpi_dynimac_path
mkdir -p $f$mipmap_xhdpi_dynimac_path
mkdir -p $f$mipmap_xxhdpi_dynimac_path
mkdir -p $f$mipmap_xxxhdpi_dynimac_path
#echo "Done"

#Legacy icon Sizes
mipmap_hdpi_legacy_size="48"
mipmap_mdpi_legacy_size="72"
mipmap_xhdpi_legacy_size="96"
mipmap_xxhdpi_legacy_size="144"
mipmap_xxxhdpi_legacy_size="192"

#Dynimac icon Sizes
mipmap_hdpi_dynimac_size="162"
mipmap_mdpi_dynimac_size="108"
mipmap_xhdpi_dynimac_size="216"
mipmap_xxhdpi_dynimac_size="324"
mipmap_xxxhdpi_dynimac_size="432"

#Make legacy icons
#cp ${li} $mipmap_google_play_legacy_path
sips --resampleHeightWidth $mipmap_hdpi_legacy_size $mipmap_hdpi_legacy_size "${f}${li}" --out "${f}${mipmap_hdpi_legacy_path}${li}"
sips --resampleHeightWidth $mipmap_mdpi_legacy_size $mipmap_mdpi_legacy_size "${f}${li}" --out "${f}${mipmap_mdpi_legacy_path}${li}"
sips --resampleHeightWidth $mipmap_xhdpi_legacy_size $mipmap_xhdpi_legacy_size "${f}${li}" --out "${f}${mipmap_xhdpi_legacy_path}${li}"
sips --resampleHeightWidth $mipmap_xxhdpi_legacy_size $mipmap_xxhdpi_legacy_size "${f}${li}" --out "${f}${mipmap_xxhdpi_legacy_path}${li}"
sips --resampleHeightWidth $mipmap_xxxhdpi_legacy_size $mipmap_xxxhdpi_legacy_size "${f}${li}" --out "${f}${mipmap_xxxhdpi_legacy_path}${li}"
echo "Done"

#Make dynimac icons
#Make dynimac icons bg
sips --resampleHeightWidth $mipmap_hdpi_dynimac_size $mipmap_hdpi_dynimac_size "${f}${bg}" --out "${f}${mipmap_hdpi_dynimac_path}${bg}"
sips --resampleHeightWidth $mipmap_mdpi_dynimac_size $mipmap_mdpi_dynimac_size "${f}${bg}" --out "${f}${mipmap_mdpi_dynimac_path}${bg}"
sips --resampleHeightWidth $mipmap_xhdpi_dynimac_size $mipmap_xhdpi_dynimac_size "${f}${bg}" --out "${f}${mipmap_xhdpi_dynimac_path}${bg}"
sips --resampleHeightWidth $mipmap_xxhdpi_dynimac_size $mipmap_xxhdpi_dynimac_size "${f}${bg}" --out "${f}${mipmap_xxhdpi_dynimac_path}${bg}"
sips --resampleHeightWidth $mipmap_xxxhdpi_dynimac_size $mipmap_xxxhdpi_dynimac_size "${f}${bg}" --out "${f}${mipmap_xxxhdpi_dynimac_path}${bg}"
#echo "Done"

#Make dynimac icons fg
sips --resampleHeightWidth $mipmap_hdpi_dynimac_size $mipmap_hdpi_dynimac_size "${f}${fg}" --out "${f}${mipmap_hdpi_dynimac_path}${fg}"
sips --resampleHeightWidth $mipmap_mdpi_dynimac_size $mipmap_mdpi_dynimac_size "${f}${fg}" --out "${f}${mipmap_mdpi_dynimac_path}${fg}"
sips --resampleHeightWidth $mipmap_xhdpi_dynimac_size $mipmap_xhdpi_dynimac_size "${f}${fg}" --out "${f}${mipmap_xhdpi_dynimac_path}${fg}"
sips --resampleHeightWidth $mipmap_xxhdpi_dynimac_size $mipmap_xxhdpi_dynimac_size "${f}${fg}" --out "${f}${mipmap_xxhdpi_dynimac_path}${fg}"
sips --resampleHeightWidth $mipmap_xxxhdpi_dynimac_size $mipmap_xxxhdpi_dynimac_size "${f}${fg}" --out "${f}${mipmap_xxxhdpi_dynimac_path}${fg}"
#echo "Done"
echo e "Bingo $1 Successfuly Was Genrated"
