# Diy-Part2

# Add lean's package
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
popd

# Add others package
mkdir package/community
pushd package/community

git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

git clone --depth=1 -b master https://github.com/vernesong/OpenClash

git clone --depth=1 https://github.com/SuLingGG/luci-app-diskman
mkdir parted
cp luci-app-diskman/Parted.Makefile parted/Makefile

rm -rf ../lean/luci-app-docker
git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker

git clone --depth=1 https://github.com/aicccu/luci-theme-opentomcat

svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome

popd

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
