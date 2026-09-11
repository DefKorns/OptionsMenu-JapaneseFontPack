TARGET_NAME = options_japanese_font_pack

all: out/$(TARGET_NAME).hmod

out/$(TARGET_NAME).hmod: mod/install mod/uninstall mod/readme.md mod/etc/options_menu/fonts/NotoSansJP-CJK.ttf
	mkdir -p out
	cd mod/; tar -czvf "../out/$(TARGET_NAME).hmod" *

clean:
	rm -rf out/

.PHONY: all clean
