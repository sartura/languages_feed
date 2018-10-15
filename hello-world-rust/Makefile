#
# Copyright (C) 2018 Sartura Ltd.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=hello-world-rust
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Mislav Novakovic <mislav.novakovic@sartura.hr>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/hello-world-rust
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=examples
  TITLE:=WEB hello world in rust
endef

define Package/hello-world-rust/description
Hello world WEB server in rust.
Source code is used from: https://rosettacode.org/wiki/Hello_world/Web_server
endef

define Build/Prepare
	$(CP) ./files/* $(PKG_BUILD_DIR)/; \
	sed -i -e "s#STAGING_DIR#$(TOOLCHAIN_DIR)/bin/arm-openwrt-linux-gcc#" $(PKG_BUILD_DIR)/hello-world-rust/.cargo/config
endef

define Build/Compile
	cd $(PKG_BUILD_DIR)/hello-world-rust; \
	cargo build --target=arm-unknown-linux-musleabi --release
endef

define Package/hello-world-rust/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/hello-world-rust/target/arm-unknown-linux-musleabi/release/hello-world-rust $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/hello-world-rust.init $(1)/etc/init.d/hello-world-rust
endef

$(eval $(call BuildPackage,hello-world-rust))
