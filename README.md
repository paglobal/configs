# My configs (mostly for linux)

## To setup:

- Clone this directory onto your local machine.
- Install node through pnpm or nvm.
- Install zx and tsx globally. You can also globally install typescript if you want, but it's not necessary.

## To run any of the scripts:

- Run its corresponding npm script. eg. `npm run start:symlink-configs` to run the `symlink-configs.ts` script.

## Note

- Make sure you have JetBrainsMono Nerd Font installed on your system.
- The neovim config uses NvChad. Make sure to have that installed before proceeding to symlink the configs.
- Also try to make sure all the necessary packages are installed before trying to symlink their configs.
- The neovim config was last tested on version `0.9.2`
- Do not symlink the sudoers file in `sudoers.d`. Just copy it to `/etc/sudoers.d/new`.

## Todo

- Add option to delete already existing paths when symlinking configs.
- Provide a more concise `apt-packages.txt` through manual scrutiny.
