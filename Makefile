#!/usr/bin/make -f

DESTDIR=install

.PHONY: install clean

install: install-dirs install-symlinks install-files

install-dirs:
	install -d -m 0755 $(DESTDIR)/boot
	install -d -m 0755 $(DESTDIR)/dev
	install -d -m 0755 $(DESTDIR)/etc
	install -d -m 0755 $(DESTDIR)/etc/opt
	install -d -m 0755 $(DESTDIR)/etc/profile.d
	install -d -m 0755 $(DESTDIR)/etc/skel
	install -d -m 0755 $(DESTDIR)/home
	install -d -m 0755 $(DESTDIR)/media
	install -d -m 0755 $(DESTDIR)/mnt
	install -d -m 0755 $(DESTDIR)/opt
	install -d -m 0755 $(DESTDIR)/proc
	install -d -m 0750 $(DESTDIR)/root
	install -d -m 0755 $(DESTDIR)/run
	install -d -m 0755 $(DESTDIR)/run/mount
	install -d -m 0755 $(DESTDIR)/run
	install -d -m 0755 $(DESTDIR)/srv
	install -d -m 0755 $(DESTDIR)/sys
	install -d -m 1777 $(DESTDIR)/tmp
	install -d -m 0755 $(DESTDIR)/usr
	install -d -m 0755 $(DESTDIR)/usr/bin
	install -d -m 0755 $(DESTDIR)/usr/include
	install -d -m 0755 $(DESTDIR)/usr/lib
	install -d -m 0755 $(DESTDIR)/usr/sbin
	install -d -m 0755 $(DESTDIR)/usr/src
	install -d -m 0755 $(DESTDIR)/usr/share
	install -d -m 0755 $(DESTDIR)/usr/share/base-files
	install -d -m 0755 $(DESTDIR)/usr/share/doc
	install -d -m 0755 $(DESTDIR)/usr/share/info
	install -d -m 0755 $(DESTDIR)/usr/share/locale
	install -d -m 0755 $(DESTDIR)/usr/share/man
	install -d -m 0755 $(DESTDIR)/usr/share/man/man1
	install -d -m 0755 $(DESTDIR)/usr/share/man/man2
	install -d -m 0755 $(DESTDIR)/usr/share/man/man3
	install -d -m 0755 $(DESTDIR)/usr/share/man/man4
	install -d -m 0755 $(DESTDIR)/usr/share/man/man5
	install -d -m 0755 $(DESTDIR)/usr/share/man/man6
	install -d -m 0755 $(DESTDIR)/usr/share/man/man7
	install -d -m 0755 $(DESTDIR)/usr/share/man/man8
	install -d -m 0755 $(DESTDIR)/usr/share/misc
	install -d -m 0755 $(DESTDIR)/usr/share/terminfo
	install -d -m 0755 $(DESTDIR)/usr/share/zoneinfo
	install -d -m 0755 $(DESTDIR)/usr/local
	install -d -m 0755 $(DESTDIR)/usr/local/bin
	install -d -m 0755 $(DESTDIR)/usr/local/include
	install -d -m 0755 $(DESTDIR)/usr/local/lib
	install -d -m 0755 $(DESTDIR)/usr/local/sbin
	install -d -m 0755 $(DESTDIR)/usr/local/src
	install -d -m 0755 $(DESTDIR)/usr/local/share
	install -d -m 0755 $(DESTDIR)/usr/local/share/doc
	install -d -m 0755 $(DESTDIR)/usr/local/share/info
	install -d -m 0755 $(DESTDIR)/usr/local/share/locale
	install -d -m 0755 $(DESTDIR)/usr/local/share/man
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man1
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man2
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man3
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man4
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man5
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man6
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man7
	install -d -m 0755 $(DESTDIR)/usr/local/share/man/man8
	install -d -m 0755 $(DESTDIR)/usr/local/share/misc
	install -d -m 0755 $(DESTDIR)/usr/local/share/terminfo
	install -d -m 0755 $(DESTDIR)/usr/local/share/zoneinfo
	install -d -m 0755 $(DESTDIR)/var
	install -d -m 0755 $(DESTDIR)/var/cache
	install -d -m 0755 $(DESTDIR)/var/lib
	install -d -m 0755 $(DESTDIR)/var/local
	install -d -m 0755 $(DESTDIR)/var/log
	install -d -m 2775 $(DESTDIR)/var/mail
	install -d -m 0755 $(DESTDIR)/var/misc
	install -d -m 0755 $(DESTDIR)/var/opt
	install -d -m 0755 $(DESTDIR)/var/spool
	install -d -m 1777 $(DESTDIR)/var/tmp
	install -d -m 0755 $(DESTDIR)/var/www

install-symlinks:
	ln -sf usr/bin    $(DESTDIR)/bin
	ln -sf usr/sbin   $(DESTDIR)/sbin
	ln -sf usr/lib    $(DESTDIR)/lib
	ln -sf ../mail    $(DESTDIR)/var/spool/mail
	ln -sf /run/lock  $(DESTDIR)/var/run
	ln -sf share/man  $(DESTDIR)/usr/man
	ln -sf share/doc  $(DESTDIR)/usr/doc
	ln -sf share/info $(DESTDIR)/usr/info

install-files:
	install -m 644 etc/bolt_version $(DESTDIR)/etc/
	install -m 644 etc/os-release   $(DESTDIR)/etc/
	install -m 644 etc/profile      $(DESTDIR)/etc/
	install -m 644 etc/services     $(DESTDIR)/etc/

