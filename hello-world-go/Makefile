#
# Copyright (C) 2018 Sartura Ltd.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_MAINTAINER:=Mislav Novakovic <mislav.novakovic@sartura.hr>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_NAME:=hello-world-go
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/sartura/hello-world-go/tar.gz/${PKG_VERSION}?
PKG_HASH:=b092614368c6fcdedfcd367348168fc33e7b5a867c3fa09239c892add9d054e0

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/sartura/hello-world-go

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/hello-world-go
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=examples
  TITLE:=WEB hello world in GO
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/hello-world-go/description
Hello world WEB server in GO.
Source code is used from: https://rosettacode.org/wiki/Hello_world/Web_server
endef

define Package/hello-world-go/install
	$(call GoPackage/Package/Install/Bin,$(1))

	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/hello-world-go.init $(1)/etc/init.d/hello-world-go
endef

$(eval $(call GoBinPackage,hello-world-go))
$(eval $(call BuildPackage,hello-world-go))
