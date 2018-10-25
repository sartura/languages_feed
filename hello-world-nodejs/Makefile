#
# Copyright (C) 2018 Sartura Ltd.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=hello-world-nodejs
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Mislav Novakovic <mislav.novakovic@sartura.hr>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/hello-world-nodejs
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=examples
  TITLE:=WEB hello world in Node.js
  DEPENDS:=+node
endef

define Package/hello-world-nodejs/description
Hello world WEB server in nodejs.
Source code is used from: https://rosettacode.org/wiki/Hello_world/Web_server
endef

define Build/Compile
endef

define Package/hello-world-nodejs/install
	$(INSTALL_DIR) $(1)/usr/lib/nodejs
	$(CP) ./files/hello-world-nodejs.js $(1)/usr/lib/nodejs

	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/hello-world-nodejs.init $(1)/etc/init.d/hello-world-nodejs
endef

$(eval $(call BuildPackage,hello-world-nodejs))
