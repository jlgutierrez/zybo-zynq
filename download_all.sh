#!/bin/sh

wget=/usr/bin/wget
tar=/bin/tar
DOC_FOLDER="doc/"
VIVADO_FILES_FOLDER="vivado_files/"
DEMO_FOLDER="demo/"

ZYBO_SCHEMATICS="http://www.digilentinc.com/Data/Products/ZYBO/ZYBO_sch_B_V2.pdf"
ZYBO_REF_MANUAL="http://www.digilentinc.com/Data/Products/ZYBO/ZYBO_RM_B_V6.pdf"
ZYBO_TUTORIAL="http://www.digilentinc.com/Data/Products/ZYBO/Embedded_Linux_Hands-on_Tutorial.pdf"

ZYBO_UCF_ISE="http://www.digilentinc.com/Data/Products/ZYBO/ZYBO_Master_ucf.zip"
ZYBO_DEFINITION_FILES="http://www.digilentinc.com/Data/Products/ZYBO/ZYBO_def.zip"
ZYBO_XDC="http://www.digilentinc.com/Data/Products/ZYBO/ZYBO_Master_xdc.zip"
ZYBO_BSP="http://www.digilentinc.com/Data/Products/ZYBO/ZYBO_petalinux_v2014_2.bsp"

ZYBO_DEMO="http://www.digilentinc.com/Data/Products/ZYBO/zybo_base_system.zip"

echo "Downloading ..."

$wget -P $DOC_FOLDER $ZYBO_SCHEMATICS
$wget -P $DOC_FOLDER $ZYBO_REF_MANUAL
$wget -P $DOC_FOLDER $ZYBO_TUTORIAL

$wget -P $VIVADO_FILES_FOLDER $ZYBO_UCF_ISE
$wget -P $VIVADO_FILES_FOLDER $ZYBO_DEFINITION_FILES
$wget -P $VIVADO_FILES_FOLDER $ZYBO_XDC
$wget -P $VIVADO_FILES_FOLDER $ZYBO_BSP

$wget -P $DEMO_FOLDER $ZYBO_DEMO

echo "Downloaded:"
echo "$DOC_FOLDER/"
echo "Zybo Schematics"
echo "Zybo Reference Manual"
echo "Zybo Development Tutorial"

echo "$VIVADO_FILES_FOLDER/"
echo "Zybo Schematics"
echo "Zybo Reference Manual"
echo "Zybo Development Tutorial"

echo "$DEMO_FOLDER/"
echo "Zybo Schematics"


