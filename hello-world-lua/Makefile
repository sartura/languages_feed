#
# Copyright (C) 2018 Sartura Ltd.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=hello-world-lua
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Mislav Novakovic <mislav.novakovic@sartura.hr>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk
$(call include_mk, lua-package.mk)

define Package/hello-world-lua
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=examples
  TITLE:=WEB hello world in lua
  DEPENDS:=+lua +luasocket
endef

define Package/hello-world-lua/description
Hello world WEB server in lua.
Source code is used from: https://rosettacode.org/wiki/Hello_world/Web_server
endef

define Build/Compile
endef

define Package/hello-world-lua/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(CP) ./files/hello-world-lua.lua $(1)/usr/lib/lua

	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/hello-world-lua.init $(1)/etc/init.d/hello-world-lua
endef

$(eval $(call BuildPackage,hello-world-lua))
