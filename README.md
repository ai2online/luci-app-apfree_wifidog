luci-app-apfree_wifidog是apfree wifidog的luci配置页面
但是存在许多问题，我已经修复
将其加入到LEDE&OpenWrt可以这样做：

### 准备工作
luci-app-apfree_wifidog依赖于apfree-wifidog (注意两个名称一个中杠，一个下划杠)

1.如果你用的是openwrt或者LEDE 19.07以上版本的，官方已经收录apfree-wifidog，使用git clone https://github.com/ai2online/luci-app-apfree_wifidog.git 到package，当然你也可以手动下载放入

2.如果用的是其他版本的openwrt，请自行解决apfree-wifidog的编译和依赖，然后把本项目git clone或手动放到package文件夹

3.如果你是使用19.07以上 sdk单独编译放给安装，可以选择删去Makefile里的+apfree-wifidog  编译出ipk后，使用官方源安装apfree-wifidog后安装该luci-app,更方便
## ### 编译配置

```
make menuconfig
```
选择 luci->application->apfree_wifidog

make V=s


## 联系我们
我和原作者都在这里   QQ群
[331230369](https://jq.qq.com/?_wv=1027&k=4ADDSev)

### 如果您觉得我们的开源对您有帮助，请不要犹豫 star
