local std = require "@std"

return std.system {
  std.symlinks {
    ["~/.config/sway"] = "sway",
    ["~/.config/kanshi"] = "kanshi",
    ["~/.config/waybar"] = "waybar",
    ["~/.config/foot"] = "foot",
    ["~/Pictures/wallpapers"] = "wallpapers"
  }
}
