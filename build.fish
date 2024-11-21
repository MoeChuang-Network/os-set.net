#!/usr/bin/fish

# In case we wanna upgrade our instance

set root "/opt/netboot.xyz"
rm -rf $root
git clone https://github.com/netbootxyz/netboot.xyz.git $root

# patch

cp ./user_overrides.yml $root

# End of patch

cd $root

docker build -t localbuild -f Dockerfile .
docker run --rm -it -v (pwd):/buildout localbuild