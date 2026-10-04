PREFIX ?= /usr/local
DESTDIR ?=

.PHONY: install uninstall

install:
	install -Dm755 bin/kyber                    $(DESTDIR)$(PREFIX)/bin/kyber
	install -Dm644 share/kyber/hyprlock.conf.in $(DESTDIR)$(PREFIX)/share/kyber/hyprlock.conf.in
	install -Dm644 share/kyber/config.example   $(DESTDIR)$(PREFIX)/share/kyber/config.example
	install -Dm644 LICENSE                      $(DESTDIR)$(PREFIX)/share/licenses/kyber/LICENSE

uninstall:
	rm -f  $(DESTDIR)$(PREFIX)/bin/kyber
	rm -rf $(DESTDIR)$(PREFIX)/share/kyber
	rm -rf $(DESTDIR)$(PREFIX)/share/licenses/kyber
