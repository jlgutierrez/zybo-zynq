#!/bin/bash

expected_folder="zybo-zynq"
SD_folder="sd_card"
filesystem="rootfs.cpio.uboot"
kernel="uImage"
devicetree="zynq-zybo.dtb"
buildroot_output="buildroot/output/images/"
buildroot_folder="buildroot"
uboot_folder=" u-boot-Digilent-Dev"

script_name=`basename $0`

echo "####################################################"
echo "###########     $script_name     #############"
echo "####################################################"
echo "     Use this to compile:
	    - U-boot
	    - Buildroot
	- download Xilinx Device Tree BSP for SDK"
echo "####################################################"

: ${ARCH?"Need to set ARCH=arm"; exit;}
: ${CROSS_COMPILE:?"Need to set CROSS_COMPILE with your cross compiler for arm"; exit;}

folder=${PWD##*/} 
         
if [ "$1" == "help" ] || [ "$1" == "" ];
then
	echo "Help menu:"
	echo "$ `basename $0` [option]"
	echo " - all: compiles both U-boot and buildroot"
	echo " - uboot: compiles U-boot"
	echo " - buildroot: compiles Buildroot"
	echo " - clean: performs a clean in U-boot and Buildroot folders"
	echo " - remove: REMOVES U-boot and Buildroot folders"
	echo " - devicetree: clones Xilinx Device Tree repository for SDK"
	exit;
fi
if [ "$folder" != "$expected_folder" ]
then
	echo "This script must be run from $expected_folder folder"
	echo "Please cd to $expected_folder and re-run $script_name"
else

	if [ "$1" == "devicetree" ];
	then
		git clone https://github.com/Xilinx/device-tree-xlnx.git
		echo -e "\e[42mDevice Tree BSP for SDK ready to use!\033[0m"
		echo -e "\e[42mPlease add it to your SDK BSP Repository!\033[0m"
	fi
	
	if  [ "$1" == "clean" ];
	then
		cd u-boot-Digilent-Dev/
		make clean
		cd ..
		cd buildroot
		make clean
		cd ..
		echo -e "\e[42mU-boot and Buildroot folders cleaned!\033[0m"
	fi
	
	if [ "$1" == "remove" ];
	then
		rm -rf buildroot/
		rm -rf u-boot-Digilent-Dev/
		echo -e "\e[42mU-boot and Buildroot folders have been removed!\033[0m"
	fi

	if  [ "$1" == "all" ] || [ "$1" == "uboot" ];
	then
		#u-boot
		if [ ! -d $uboot_folder ];
		then
			echo -e "\e[42mCloning u-boot repository\033[0m"
			git clone https://github.com/DigilentInc/u-boot-Digilent-Dev.git
			cd u-boot-Digilent-Dev/
			git checkout master-next
			make zynq_zybo
			make
			cp u-boot u-boot.elf
			cd ..
			echo -e "\e[42mU-boot finished!\033[0m"
		else
			echo -e "\e[42mCompiling U-boot...\033[0m"
			cd u-boot-xlnx/
			make
			echo -e "\e[42mU-boot finished!\033[0m"
			cd ..
		fi
		#end u-boot
	fi
	
	if  [ "$1" == "all" ] || [ "$1" == "buildroot" ];
	then
		#Buildroot
		if [ ! -d $buildroot_folder ];
		then
			echo -e "\e[42mCloning buildroot repository\033[0m"
			git clone git://git.buildroot.net/buildroot

			echo -e "\e[42mAdding zenboard configuration files\033[0m"
			cp config/zenboard_defconfig buildroot/configs/zenboard_defconfig
			cd buildroot/
			make zenboard_defconfig
			cp ../config/br2_linux_filesystem_config ./.config
			make
			cd ..
			echo -e "\e[42mBuildroot finished!\033[0m"
		else
			echo -e "\e[42mCompiling buildroot\033[0m"
			cd buildroot/
			make
			echo -e "\e[42mBuildroot finished!\033[0m"
			cd ..
		fi

		echo -e "\e[42mCopying files to $SD_folder \033[0m"
		sh build/create_sd_files.sh
		#end buildroot
	fi
	
	if  [ ! "$1" == "all" ] && [ ! "$1" == "buildroot" ] && [ ! "$1" == "uboot" ] && [ ! "$1" == "clean" ] && [ ! "$1" == "remove" ] && [ ! "$1" == "devicetree" ];
	then
		echo -e "\033[0;31mWrong Parameters!\033[0m"
		echo "Help menu:"
		echo "$ `basename $0` [option]"
		echo " - all: compiles both U-boot and buildroot"
		echo " - uboot: compiles U-boot"
		echo " - buildroot: compiles Buildroot"
		echo " - clean: performs a clean in U-boot and Buildroot folders"
		echo " - remove: REMOVES U-boot and Buildroot folders"
		echo " - devicetree: clones Xilinx Device Tree repository for SDK"
		exit;
	fi
fi

