local std = require "@std"

return std.system {
  std.dnf.packages {
    "cascadia-code-nf-fonts"
  },
  std.symlinks {
    ["~/.config/sway"] = "sway",
    ["~/.config/kanshi"] = "kanshi",
    ["~/.config/waybar"] = "waybar",
    ["~/.config/foot"] = "foot",
    ["~/Pictures/wallpapers"] = "wallpapers"
  }
}
