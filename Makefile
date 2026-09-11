MOD_CREATOR := DefKorns
MOD_CATEGORY := Options Menu - Addon
MOD_NAME := Options Menu Japanese Font Pack
MOD_VER ?= $(shell git describe --tags --abbrev=0 2>/dev/null || echo v1.0.0)
GIT_COMMIT := $(shell git describe --always --dirty=.dirty 2>/dev/null)
TARGET_NAME = om_japanese_font_pack
DEV_DIR = $(shell realpath .)
OUT = $(DEV_DIR)/out
TMP = $(DEV_DIR)/temp

define inject-readme =
	mkdir -p $(OUT)/ $(TMP)/
	cp mod/readme.md temp/readme.md

	printf "%s\n" \
	"---" \
	"Name: $(MOD_NAME)" \
	"Creator: $(MOD_CREATOR)" \
	"Category: $(MOD_CATEGORY)" \
	"Version: $(MOD_VER)$(if $(GIT_COMMIT), ($(GIT_COMMIT)))" \
	"Built on: $(shell date +"%A, %d %b %Y - %T")" \
	"---" > mod/readme.md

	sed 1d temp/readme.md >> mod/readme.md
endef

all: out/$(TARGET_NAME).hmod

out/$(TARGET_NAME).hmod: mod/install mod/uninstall mod/etc/options_menu/fonts/NotoSansJP-CJK.ttf
	$(inject-readme)

	cd mod/; tar -czvf "../out/$(TARGET_NAME).hmod" *

	cp temp/readme.md mod/readme.md
	rm -rf $(TMP)

clean:
	rm -rf out/ temp/

.PHONY: all clean
