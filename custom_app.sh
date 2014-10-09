#!/bin/sh
apkname=$1
path=$2

if [ "$1" = "advanceSetting" ]
	then
	cp -rf /home/ever-never/桌面/cn.edu.ncwu.www/bin/advanceSetting.apk vender/system/app
fi

if [ "$1" = "Settings" ]
	then
	echo ">>>>> custom in Settings"
	cp Settings/settings.patch $path
	cd $path
	patch  -p1 < settings.patch
	rm settings.patch
	cd - 
fi
