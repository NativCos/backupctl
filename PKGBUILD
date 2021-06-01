# Maintainer: Null <null@null>
pkgname=backupctl
pkgver=1.0
pkgrel=1
pkgdesc="Backup to a remote location using Borg."
arch=("x86_64")
url=""
license=("BSD")
source=(/home/nikita/projects/backupctl/)
sha256sums=('SKIP')
makedepends=('borg' 'openssh')
makedepends=('make')

package() {
  cd ${srcdir}
  make DESTDIR="${pkgdir}" install
}
