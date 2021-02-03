# Diy-Part2

pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
popd

mkdir package/community

pushd package/community
git clone --depth=1 https://github.com/kenzok8/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/small
popd

sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
