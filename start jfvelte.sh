#!/bin/bash  

cd ~/LineageOS/15.1
make clean
#cd .repo/local_manifests
#wget -O roomservice.xml https://raw.githubusercontent.com/Exodusnick/local_manifests/lineage-15.1/jfvelte.xml_Test
#cd ../..
#repo sync -c --force-sync --no-clone-bundle --no-tags
cd device/samsung/jfve-common/patches
./apply.sh
cd ../../../../prebuilts/sdk/tools
./jack-admin kill-server
cd ../../..
. build/envsetup.sh
brunch jfvelte
cd prebuilts/sdk/tools
./jack-admin kill-server
cd ../../../device/samsung/jfve-common/patches
./revert.sh
cd
