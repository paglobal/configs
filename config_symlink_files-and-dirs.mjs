const $h = os.homedir();
const $xch = `${$h}/.config`;

const config_symlink_filesAndDirs = {
  "./alacritty": $xch,
  "./Code/User/settings.json": $xch,
  "./Code/User/keybindings.json": $xch,
  "./dunst": $xch,
  "./eww": $xch,
  "./i3": $xch,
  "./kitty": $xch,
  "./lxqt": $xch,
  "./neofetch": $xch,
  "./nvim/lua/custom": $xch,
  "./openbox": $xch,
  "./picom": $xch,
  "./polybar": $xch,
  "./rofi": $xch,
  "./vifm": $xch,
  "./scripts": $h,
  "./.bashrc": $h,
  "./xorg.conf.d/10-nvidia-brightness.conf": "/usr/share/X11",
  "./sudoers.d/new": "/etc",
};

export default config_symlink_filesAndDirs;
