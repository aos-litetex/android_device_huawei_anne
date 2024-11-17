#!/bin/bash
echo ""
echo "LineageOS 20.x dump blob for ANNE"
echo "please put *.img in raw format here before start"
echo "Executing in 5 seconds - CTRL-C to exit"
echo ""
echo "To generate proprietary files"
echo "cd dump && find $PWD -type f | sort > anne-files.txt"
echo ""
echo "The extract script use tidy to clean Huawei XML files, so please install it before"
echo ""
sleep 5

mkdir dump/
mkdir dump/system/
mkdir dump/vendor/
mkdir dump/product/
mkdir dump/odm/
mkdir dump/preavs/
mkdir dump/cust/
mkdir dump/version/

sudo mount -o loop system.img dump/system/
sudo mount -o loop vendor.img dump/vendor/
sudo mount -o loop product.img dump/product/
sudo mount -o loop odm.img dump/odm/
sudo mount -o loop preavs.img dump/preavs/
sudo mount -o loop cust.img dump/cust/
sudo mount -o loop version.img dump/version/

echo "Reset owner"
new_owner=iceows
sudo chown -R $new_owner:$new_owner ./dump/*

echo "Start extraction"
sleep 5
./extract-files.sh anne ./dump/ > dump.log


echo "Umount all"
sleep 5
sudo umount dump/system/
sudo umount dump/vendor/
sudo umount dump/product/
sudo umount dump/odm/
sudo umount dump/preavs/
sudo umount dump/cust/
sudo umount dump/version/

rm -rf dump/system/
rm -rf dump/vendor/
rm -rf dump/product/
rm -rf dump/odm/
rm -rf dump/preavs/
rm -rf dump/cust/
rm -rf dump/version/
