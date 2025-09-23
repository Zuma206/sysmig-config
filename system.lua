local std = require "@std"

return std.system {
  std.components {
    module = "components",
    "proton-vpn-repos",
    "rpm-fusion",
    "homebrew",
  },
  std.dnf.packages {
    "proton-vpn-gnome-desktop",
    "cascadia-code-nf-fonts",
    "flatpak",
    "wlogout",
    "neovim",
    "zoxide",
    "steam",
    "gimp",
    "cloc",
  },
  std.homebrew.packages {
    "starship",
    "go",
  },
  std.flatpak.remotes {
    flathub = "https://dl.flathub.org/repo/flathub.flatpakrepo"
  },
  std.flatpak.packages {
    "com.github.Matoking.protontricks",
    "org.libreoffice.LibreOffice",
  },
  std.symlinks {
    ["~/.config/starship.toml"] = "starship/starship.toml",
    ["~/Pictures/wallpapers"] = "wallpapers",
    ["~/.config/swaylock"] = "swaylock",
    ["~/.config/wlogout"] = "wlogout",
    ["~/.config/swaynag"] = "swaynag",
    ["~/.config/kanshi"] = "kanshi",
    ["~/.config/waybar"] = "waybar",
    ["~/.bashrc"] = "bash/.bashrc",
    ["~/.inputrc"] = "bash/.inputrc",
    ["~/.config/sway"] = "sway",
    ["~/.config/nvim"] = "nvim",
    ["~/.config/foot"] = "foot",
    ["~/.config/rofi"] = "rofi",
  }
}
