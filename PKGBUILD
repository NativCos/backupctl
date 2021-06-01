# Maintainer: Null <null@null>
pkgname=backupctl
pkgver=1.0
pkgrel=1
pkgdesc="Backup to a remote location using Borg."
arch=("x86_64")
url="https://stok.cloud/ddkvlvqy/gitea/nikita/backupctl.git"
license=("BSD")
source=("https://stok.cloud/ddkvlvqy/gitea/nikita/backupctl.git")
sha256sums=('SKIP')
makedepends=('borg' 'openssh')
makedepends=('make')

package() {
  echo $PWD
  make DESTDIR="${pkgdir}" install
}
