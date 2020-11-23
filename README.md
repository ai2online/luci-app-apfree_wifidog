luci-app-apfree_wifidog是apfree wifidog的luci配置页面
但是存在许多问题，我已经修复
将其加入到LEDE&OpenWrt可以这样做：

### 准备工作
luci-app-apfree_wifidog依赖于apfree-wifidog (注意两个名称一个中杠，一个下划杠)

1.如果你用的是openwrt或者LEDE 19.07以上版本的，官方已经收录apfree-wifidog，
cd openwrt/package/  

git clone git clone https://github.com/ai2online/luci-app-apfree_wifidog.git 

或手动下载放到package文件夹

make menuconfig

luci->application->luci-app-apfree_wifidog


make V=s



2.如果用的是其他版本的openwrt，请自行解决apfree-wifidog的编译和依赖，然后把本项目git clone或手动放到package文件夹

3.如果你是使用19.07以上 sdk单独编译放给安装，可以选择删去Makefile里的+apfree-wifidog  编译出ipk后，使用官方源安装apfree-wifidog后安装该luci-app,更方便

4.额外的（如果使用LEDE 最新的也是19.04了）
cd lede/package/lean/  

git clone https://github.com/ai2online/luci-app-apfree_wifidog.git  

make menuconfig

### 特别提示#####################
如果进网页出现 no file xxx
通常在19.07以上都会出现，因为模块luci.model.ipkg不在默认存在，需要额外安装支持
opkg update
opkg install luci-lib-ipkg
#################################


如果你遇到了因其他 cbi.lua 缺失造成的崩溃，请尝试安装 luci-compat 软件包。
opkg install luci-compat

## 联系我们
我和原作者都在这里   QQ群
[331230369](https://jq.qq.com/?_wv=1027&k=4ADDSev)

### 如果您觉得我们的开源对您有帮助，请不要犹豫 star
