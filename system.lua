local std = require "@std"

return std.system {
  std.dnf.packages {
    "cascadia-code-nf-fonts",
    "neovim"
  },
  std.symlinks {
    ["~/.config/sway"] = "sway",
    ["~/.config/kanshi"] = "kanshi",
    ["~/.config/waybar"] = "waybar",
    ["~/.config/nvim"] = "nvim",
    ["~/.config/foot"] = "foot",
    ["~/.config/rofi"] = "rofi",
    ["~/.config/swaynag"] = "swaynag",
    ["~/Pictures/wallpapers"] = "wallpapers"
  }
}
