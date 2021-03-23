# Diy-Part2

# Add luci-app-ssr-plus
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld.git
popd

mkdir package/community
pushd package/community

# Add luci-app-adguardhome
git clone --depth=1 https://github.com/SuLingGG/luci-app-adguardhome.git

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash.git

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git
rm -rf ../lean/luci-theme-argon

popd

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
