# Diy-Part2

# pushd package/lean
# git clone --depth=1 https://github.com/fw876/helloworld.git
# popd

mkdir package/community
pushd package/community

# Add luci-app-adguardhome
git clone --depth=1 https://github.com/SuLingGG/luci-app-adguardhome.git

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash.git

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git
rm -rf ../lean/luci-theme-argon

# Add driver for rtl8821cu & rtl8812au-ac
svn co https://github.com/project-openwrt/openwrt/branches/master/package/ctcgfw/rtl8812au-ac
svn co https://github.com/project-openwrt/openwrt/branches/master/package/ctcgfw/rtl8821cu

popd

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
