import "zx/globals";

const $h = `${os.homedir()}/`;
const $xch = `${$h}.config/`;

// !!! follow the format below to add an entry to the `config_symlink_filesAndDirs` object !!!
// { "relative/path/to/config/fileOrDir" : "absolute/path/to/symlink/fileOrDir/parentDir" }:
const config_symlink_filesAndDirs = {
  "./alacritty/": $xch,
  "./Code/User/settings.json": $xch,
  "./Code/User/keybindings.json": $xch,
  "./dunst/": $xch,
  "./eww/": $xch,
  "./i3/": $xch,
  "./kitty/": $xch,
  "./lxqt/": $xch,
  "./neofetch/": $xch,
  "./nvim/lua/custom/": $xch,
  "./openbox/": $xch,
  "./picom/": $xch,
  "./polybar/": $xch,
  "./rofi/": $xch,
  "./vifm/": $xch,
  "./scripts/": $h,
  // "./.bashrc": $h,
  "./xorg.conf.d/10-nvidia-brightness.conf": "/usr/share/X11/",
};

export default config_symlink_filesAndDirs;
