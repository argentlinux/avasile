PREFIX = /usr
BINDIR = $(PREFIX)/bin
LIBDIR = /lib64/avasile

all:

install:
	install -d $(DESTDIR)$(BINDIR) $(DESTDIR)$(LIBDIR)
	install -m 0755 avasile $(DESTDIR)$(BINDIR)/avasile
	install -m 0644 libavasile $(DESTDIR)$(LIBDIR)/libavasile

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/avasile $(DESTDIR)$(LIBDIR)/libavasile
	-rmdir $(DESTDIR)$(LIBDIR)

.PHONY: all install uninstall
