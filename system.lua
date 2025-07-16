local std = require "@std"

return std.system {
  std.dnf.packages {
    "cascadia-code-nf-fonts",
    "flatpak",
    "wlogout",
    "lutris",
    "neovim"
  },

  std.components {
    module = "components",
    "homebrew"
  },
  std.homebrew.packages {
    "go"
  },

  std.flatpak.remotes {
    flathub = "https://dl.flathub.org/repo/flathub.flatpakrepo"
  },
  std.flatpak.packages {},

  std.symlinks {
    ["~/Pictures/wallpapers"] = "wallpapers",
    ["~/.config/swaylock"] = "swaylock",
    ["~/.config/wlogout"] = "wlogout",
    ["~/.config/swaynag"] = "swaynag",
    ["~/.config/kanshi"] = "kanshi",
    ["~/.config/waybar"] = "waybar",
    ["~/.config/sway"] = "sway",
    ["~/.config/nvim"] = "nvim",
    ["~/.config/foot"] = "foot",
    ["~/.config/rofi"] = "rofi"
  }
}
