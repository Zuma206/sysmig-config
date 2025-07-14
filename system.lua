local std = require "@std"

return std.system {
  std.dnf.packages {
    "cascadia-code-nf-fonts",
    "wlogout",
    "neovim"
  },
  std.components {
    module = "components",
    "homebrew"
  },
  std.homebrew.packages {
    "go"
  },
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
