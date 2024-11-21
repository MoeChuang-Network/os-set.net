#!/usr/bin/fish

# In case we wanna upgrade our instance

set root "/opt/netboot.xyz"
rm -rf $root
git clone https://github.com/netbootxyz/netboot.xyz.git $root

# patch

cp ./user_overrides.yml $root
cp $root/roles/netbootxyz/templates/disks/netboot.xyz.j2 $root/roles/netbootxyz/templates/disks/os-set.net.j2
cp $root/roles/netbootxyz/templates/disks/netboot.xyz-metal.j2 $root/roles/netbootxyz/templates/disks/os-set.net-metal.j2

# End of patch

cd $root

docker build -t localbuild -f Dockerfile .
docker run --rm -it -v (pwd):/buildout localbuild