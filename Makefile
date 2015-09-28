TOOL = mkinitramfs-simple-btrfs
INIT = simple-initramfs-init

BINDIR = bin
DATADIR = share/simple-btrfs-initramfs

PREFIX := $(shell cat .config-prefix)
DESTDIR = /

all: $(TOOL) $(INIT)
	@echo "Nothing to compile"

install:
	@echo "Installing to $(DESTDIR)/$(PREFIX)/"
	mkdir -p "$(DESTDIR)/$(PREFIX)/$(BINDIR)"
	install -m 755 $(TOOL) "$(DESTDIR)/$(PREFIX)/$(BINDIR)"
	mkdir -p "$(DESTDIR)/$(PREFIX)/$(DATADIR)"
	install -m 644 $(INIT) "$(DESTDIR)/$(PREFIX)/$(DATADIR)"

.PHONY: all install
