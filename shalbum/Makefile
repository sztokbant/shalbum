# Makefile for shalbum - http://www.sourceforge.net/projects/shalbum
# updated: 20-March-2006

PREFIX:="/usr/local"

.PHONY: shalbum

shalbum:
	@echo "shalbum is a shell-script. There's no need to compile it! =)"
	@echo "The following make targets are available:"
	@echo ""
	@echo "  install      Installs shalbum to $(PREFIX)"
	@echo "  uninstall    Uninstalls shalbum"
	@echo ""
	@echo "Default PREFIX is '$(PREFIX)'. You can override this by adding"
	@echo "'PREFIX=/the/path/you/want' to the make command."

install:
	mkdir -p $(PREFIX)/bin
	mkdir -p $(PREFIX)/share/shalbum
	cp shalbum $(PREFIX)/bin && chmod 755 $(PREFIX)/bin/shalbum
	cp _options $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/_options
	cp watermark_th.png $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/watermark_th.png
	cp watermark_vga.png $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/watermark_vga.png
	cp README $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/README
	@echo shalbum installed successfully!

uninstall:
	-rm -f $(PREFIX)/bin/shalbum
	-rm -f $(PREFIX)/share/shalbum/_options
	-rm -f $(PREFIX)/share/shalbum/watermark_th.png
	-rm -f $(PREFIX)/share/shalbum/watermark_vga.png
	-rm -f $(PREFIX)/share/shalbum/README
	-rmdir $(PREFIX)/share/shalbum
