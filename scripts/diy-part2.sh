# Diy-Part2

# Add lean's package
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
popd

# Add kenzok8's package
pushd package
git clone --depth=1 https://github.com/kenzok8/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/small
popd

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
