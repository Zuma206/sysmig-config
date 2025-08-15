return {
  name = "local.proton-vpn-repos",
  mount =
  [[sudo dnf install -y https://repo.protonvpn.com/fedora-$(rpm -E %fedora)-stable/protonvpn-stable-release/protonvpn-stable-release-1.0.3-1.noarch.rpm]],
  unmount = [[sudo dnf remove -y protonvpn-stable-release]]
}
