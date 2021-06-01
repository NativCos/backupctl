VERSION = 1.0

# paths
DESTDIR=''


install:
	cp ./src/backupctl $DESTDIR/usr/bin/backupctl
	chmod u=rx,g=rx,o=r $DESTDIR/usr/bin/backupctl

	mkdir -p $DESTDIR/etc/backupctl/

	cp ./src/excludefile $DESTDIR/etc/backupctl/excludefile
	chmod u=rw,g=rw,o=r $DESTDIR/etc/backupctl/excludefile

	cp ./src/conf $DESTDIR/etc/backupctl/conf
	chmod u=rw,g=rw,o=r $DESTDIR/etc/backupctl/conf

	cp ./src/passphrase $DESTDIR/etc/backupctl/passphrase
	chmod u=rw,g=,o= $DESTDIR/etc/backupctl/passphrase

uninstall:
	rm -f $DESTDIR/usr/bin/backupctl

.PHONY: install uninstall
