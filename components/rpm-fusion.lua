return {
  name = "local.rpm-fusion",
  mount = [[sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm]],
  unmount = [[sudo dnf remove -y rpmfusion-free-release rpmfusion-nonfree-release]]
}
