#
# Copyright (C) 2018 Sartura Ltd.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=hello-world-perl
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Mislav Novakovic <mislav.novakovic@sartura.hr>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/hello-world-perl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=examples
  TITLE:=WEB hello world in perl
  DEPENDS:=+perl +perlbase-socket
endef

define Package/hello-world-perl/description
Hello world WEB server in perl.
Source code is used from: https://rosettacode.org/wiki/Hello_world/Web_server
endef

define Build/Compile
endef

define Package/hello-world-perl/install
	$(INSTALL_DIR) $(1)/usr/include/perl
	$(CP) ./files/hello-world-perl.pl $(1)/usr/include/perl

	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/hello-world-perl.init $(1)/etc/init.d/hello-world-perl
endef

$(eval $(call BuildPackage,hello-world-perl))
