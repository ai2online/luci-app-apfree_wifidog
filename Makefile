#
# Copyright (C) 2014-2017 The KunTeng ROM Team
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for ApFree WifiDog
LUCI_DEPENDS:=+apfree_wifidog


include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature
