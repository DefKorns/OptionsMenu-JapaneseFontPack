MOD_ID       := om_japanese_font_pack
MOD_NAME     := Options Menu Japanese Font Pack
MOD_CATEGORY := Options Menu - Addons
MOD_DEPS     := mod/install mod/uninstall mod/etc/options_menu/fonts/NotoSansJP-CJK.ttf

all: hmod

clean:
	rm -rf out/

include hmod-build/hmod.mk

.PHONY: all clean
