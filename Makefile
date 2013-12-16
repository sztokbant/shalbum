# Makefile for shalbum - http://www.sourceforge.net/projects/shalbum
e updated: 20-March-2006

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
	cp shalbumrec $(PREFIX)/bin && chmod 755 $(PREFIX)/bin/shalbumrec
	cp shalbum.conf-sample $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/shalbum.conf-sample
	cp shalbumrec.conf-sample $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/shalbumrec.conf-sample
	cp shalbum-black.css $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/shalbum-black.css
	cp shalbum-white.css $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/shalbum-white.css
	cp watermark_th.png $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/watermark_th.png
	cp watermark_vga.png $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/watermark_vga.png
	cp README $(PREFIX)/share/shalbum && chmod 644 $(PREFIX)/share/shalbum/README
	@echo shalbum installed successfully!

uninstall deinstall:
	-rm -f $(PREFIX)/bin/shalbum
	-rm -f $(PREFIX)/bin/shalbumrec
	-rm -f $(PREFIX)/share/shalbum/shalbum.conf-sample
	-rm -f $(PREFIX)/share/shalbum/shalbumrec.conf-sample
	-rm -f $(PREFIX)/share/shalbum/shalbum-black.css
	-rm -f $(PREFIX)/share/shalbum/shalbum-white.css
	-rm -f $(PREFIX)/share/shalbum/watermark_th.png
	-rm -f $(PREFIX)/share/shalbum/watermark_vga.png
	-rm -f $(PREFIX)/share/shalbum/README
	-rmdir $(PREFIX)/share/shalbum

release:
	$(eval DIR := shalbum-$(shell grep sw_version shalbum | head -1 | awk -F '\"' '{ print $$2 }'))
	mkdir -p $(DIR)
	cp AUTHORS $(DIR)
	cp ChangeLog $(DIR)
	cp COPYING $(DIR)
	cp INSTALL $(DIR)
	cp Makefile $(DIR)
	cp README $(DIR)
	cp shalbum $(DIR)
	cp shalbum-black.css $(DIR)
	cp shalbum-white.css $(DIR)
	cp shalbum.conf-sample $(DIR)
	cp shalbumrec $(DIR)
	cp shalbumrec.conf-sample $(DIR)
	cp watermark_th.png $(DIR)
	cp watermark_vga.png $(DIR)
	tar czvf $(DIR).tar.gz $(DIR)
	rm -rfv $(DIR)
