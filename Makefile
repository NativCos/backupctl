VERSION = 1.0

# paths
DESTDIR=''


install:
	mkdir -p "${DESTDIR}/usr/bin/"
	
	cp ./src/backupctl "${DESTDIR}/usr/bin/backupctl"
	chmod u=rx,g=rx,o=rx "${DESTDIR}/usr/bin/backupctl"

	mkdir -p "${DESTDIR}/etc/backupctl/"

	cp ./src/excludefile "${DESTDIR}/etc/backupctl/excludefile"
	chmod u=rw,g=rw,o=r "${DESTDIR}/etc/backupctl/excludefile"

	cp ./src/conf.json "${DESTDIR}/etc/backupctl/conf.json"
	chmod u=rw,g=,o= "${DESTDIR}/etc/backupctl/conf.json"

	mkdir -p "${DESTDIR}/usr/lib/systemd/system"

	cp ./src/backupctl-create-everyday.timer "${DESTDIR}/usr/lib/systemd/system/"
	chmod u=rw,g=r,o=r "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.timer"
	cp ./src/backupctl-create-everyday.service "${DESTDIR}/usr/lib/systemd/system/"
	chmod u=rw,g=r,o= "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.service"

uninstall:
	rm -f "${DESTDIR}/usr/bin/backupctl"
	rm -f "${DESTDIR}/etc/backupctl/excludefile"
	rm -f "${DESTDIR}/etc/backupctl/"
	rm -f "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.service"
	rm -f "${DESTDIR}/usr/lib/systemd/system/backupctl-create-everyday.timer"

.PHONY: install uninstall
