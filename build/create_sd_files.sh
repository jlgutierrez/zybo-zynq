#!/bin/bash

expected_folder="zybo-zynq"
SD_folder="sd_card"
filesystem="rootfs.cpio.uboot"
kernel="uImage"
devicetree="zynq-zybo.dtb"
devicetreeCompiled="binaries/devicetree.dtb"
buildroot_output="buildroot/output/images/"

script_name=`basename $0`

echo "####################################################"
echo "###########     $script_name     #############"
echo "####################################################"
echo "     Copying these files to $SD_folder folder:
	    - devicetree.dtb
	    - uImage
	    - uramdisk.image.gz"
       
echo "     Please copy them to your SD Card "
echo "####################################################"

folder=${PWD##*/} 
         

if [ "$folder" != "$expected_folder" ]
then
	echo "This script must be run from $expected_folder folder"
	echo "Please cd to $expected_folder and re-run $script_name"
else
	#check files exist
	if [ ! -f $buildroot_output$filesystem ] ||
		[ ! -f $buildroot_output$kernel ];
	then
		echo "Some files are missing. Did you forget to run buildroot?"
	else #copy and rename files

		#Create SD folder
		if [ ! -d $SD_folder ];
		then
			mkdir $SD_folder
		fi

		if [ ! -f $buildroot_output$devicetree ]
		then
			echo "Devicetree was not generated with buildroot"			
			echo "Using device-tree.dtb from binaries/ folder"
			cp $devicetreeCompiled $SD_folder"/devicetree.dtb"
		else
			cp $buildroot_output$devicetree $SD_folder"/devicetree.dtb"
		fi
		cp $buildroot_output$filesystem $SD_folder"/uramdisk.image.gz"
		cp $buildroot_output$kernel $SD_folder"/uImage"
	fi
fi
