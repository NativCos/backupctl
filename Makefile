VERSION = 1.0

# paths
DESTDIR=''


install:
	mkdir -p "${DESTDIR}/usr/local/bin"
	
	cp ./src/backupctl "${DESTDIR}/usr/local/bin/backupctl"
	chmod u=rx,g=rx,o=rx "${DESTDIR}/usr/local/bin/backupctl"

	mkdir -p "${DESTDIR}/usr/local/etc/backupctl/"

	cp ./src/excludefile "${DESTDIR}/usr/local/etc/backupctl/excludefile"
	chmod u=rw,g=rw,o=r "${DESTDIR}/usr/local/etc/backupctl/excludefile"

	cp ./src/conf.json "${DESTDIR}/usr/local/etc/backupctl/conf.json"
	chmod u=rw,g=,o= "${DESTDIR}/usr/local/etc/backupctl/conf.json"

	mkdir -p "${DESTDIR}/usr/lib/systemd/system"

	cp ./src/backupctl-create-everyday.timer "${DESTDIR}/usr/lib/systemd/system/"
	chmod u=rw,g=r,o=r "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.timer"
	cp ./src/backupctl-create-everyday.service "${DESTDIR}/usr/lib/systemd/system/"
	chmod u=rw,g=r,o= "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.service"

uninstall:
	rm -f "${DESTDIR}/usr/local/bin/backupctl"
	rm -rf "${DESTDIR}/usr/local/etc/backupctl/"
	rm -f "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.service"
	rm -f "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.timer"

.PHONY: install uninstall
