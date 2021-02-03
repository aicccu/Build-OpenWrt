# Diy-Part2

# Add others package
mkdir package/community
pushd package/community

git clone --depth=1 -b master https://github.com/vernesong/OpenClash

git clone --depth=1 https://github.com/aicccu/luci-theme-opentomcat

svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome

popd

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
