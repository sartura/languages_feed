#
# Copyright (C) 2018 Sartura Ltd.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=hello-world-python
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Mislav Novakovic <mislav.novakovic@sartura.hr>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/hello-world-python
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=examples
  TITLE:=WEB hello world in python
  DEPENDS:=+python
endef

define Package/hello-world-python/description
Hello world WEB server in python.
Source code is used from: https://rosettacode.org/wiki/Hello_world/Web_server
endef

define Build/Compile
endef

define Package/hello-world-python/install
	$(INSTALL_DIR) $(1)/usr/lib/python2.7
	$(CP) ./files/hello-world-python.py $(1)/usr/lib/python2.7

	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/hello-world-python.init $(1)/etc/init.d/hello-world-python
endef

$(eval $(call BuildPackage,hello-world-python))
