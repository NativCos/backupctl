VERSION = 1.0

# paths
DESTDIR=''


install:
	mkdir -p ${DESTDIR}/usr/bin/
	
	cp ./src/backupctl ${DESTDIR}/usr/bin/backupctl
	chmod u=rx,g=rx,o=rx ${DESTDIR}/usr/bin/backupctl

	mkdir -p ${DESTDIR}/etc/backupctl/

	cp ./src/excludefile ${DESTDIR}/etc/backupctl/excludefile
	chmod u=rw,g=rw,o=r ${DESTDIR}/etc/backupctl/excludefile

	cp ./src/conf ${DESTDIR}/etc/backupctl/conf
	chmod u=rw,g=,o= ${DESTDIR}/etc/backupctl/conf

uninstall:
	rm -f ${DESTDIR}/usr/bin/backupctl
	rm -fr ${DESTDIR}/etc/backupctl/

.PHONY: install uninstall
