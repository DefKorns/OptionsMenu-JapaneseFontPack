# OptionsMenu Japanese Font Pack

Optional companion hmod for [OptionsMenu](https://github.com/DefKorns/OptionsMenu).
Drops a full Japanese-capable TTF font (Noto Sans JP, subsetted to the exact
Kanji/Hiragana/Katakana OptionsMenu's own bitmap font already supports) at
`/etc/options_menu/fonts/NotoSansJP-CJK.ttf`. OptionsMenu checks for that
file at startup and, if present, renders Japanese Modern UI text with it
instead of falling back to the bitmap font.

No compiled code - install/uninstall just place/remove one file, so there's
no cross-compile toolchain needed here, just:

```sh
make
```

## Why a separate hmod

Bundling this font directly in OptionsMenu would add ~1.3MB to every
install, whether or not the user ever selects Japanese. Shipping it
separately keeps OptionsMenu small by default and makes this pack fully
optional - install it if you want TTF-quality Japanese text, skip it (or
uninstall it later) if you don't, with no other side effects either way.

## License

`mod/etc/options_menu/fonts/NotoSansJP-CJK.ttf` is Noto Sans JP, SIL Open
Font License 1.1 (`mod/etc/options_menu/fonts/OFL.txt`). The install/
uninstall scripts and Makefile are GPLv3 (`LICENSE`).
