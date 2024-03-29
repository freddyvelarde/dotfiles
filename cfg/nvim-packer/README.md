<!-- <div align="center"> -->
<!--   <img src="../../assets/nvim-gallery/nvim-logo.png" width="50" height="50" style="margin-bottom: 15px; margin-right: 10px "  /> -->
<!--   [> <h1>My Neovim config</h1> <] -->
<!-- ## </div> -->

<!-- Extensions for neovim: [Extensions](https://github.com/rockerBOO/awesome-neovim) -->

# MY NEOVIM CONFIG

![material](../../assets/nvim-gallery/colorschemes/material-ocean.png)

This is my Neovim configuration based in lua script (lua is better that vim script, trust me :sweat_smile:), I tried to emulate the Visual Studio Code UI (because I really like the VScode UI) but at same time I use all the Neovim performance.

<!-- ### Why choose nvim? -->
<!--  -->
<!-- I choose neovim because I do love the idea to leave behind the mouse and always use the keyboard for everything (I am a big fan of mechanical keyboards :smile:) -->

<!-- Also you can make your nvim editor as minimal as you can or you can take your editor to the next level of customization and make incredible features with lua script, that's something that in VsCode or another text editor I can't do -->

## **Table of Contents**

- [:wrench: Installation](#installation)
- [:pushpin: Keymaps](#keymaps)
- [:pencil: Colorschemes](#colorschemes)
  <!-- - [:file_folder: Folder Structure](#folder-structure) -->

## DISCLAIMER :warning:

> - This is not Vscode, here nothing is easy to install and there will be moments that any plugin will crash, and you'll need to reserch and code to fix those errors.
> - This configuration is exclusively made for linux users, I think it might work in MacOs too, but I'm not sure.
> - Maybe something it could go wrong, I've been there a thousands of times.
> - If you want to get a nvim editor exactly as mine, you need to have installed my terminal (kitty) and my fonts (Jetbrains Mono)
> - You'll need to set up the LSP support and your formatters for all your languages (It's not too hard, don't worry)
> - If you love to code in JAVA, I don't know why the java LSP doesn't work.
> - This documentation is not finished yet.

## INSTALLATION

First of all, please backup your current nvim config file:

```shell
mv ~/.config/nvim ~/.config/nvim-backup
```

Clone my entire dotfiles repository.

```shell
git clone https://github.com/freddyvelarde/dotfiles
cd dotfiles
```

Copy my nvim config file:

```shell
cp -r .config/nvim ~/.config
```

Once you're done, you can remove my repository from your machine.

```shell
cd ../ && rm -rf dotfiles
```

Install all the plugins just with one single vim command run `nvim ~/.config/nvim` and then press `:` in normal mode, run `:PackerSync`

## RANDOM FEATURES

- Session Project Manager

  > When we're coding and we just quit vim all the files were closed and it's normal but if you want to keep your last files open yet,
  > there's a plugin `https://github.com/olimorris/persisted.nvim` to fix this problem.
  > To use this plugin here are all the commands: `https://github.com/olimorris/persisted.nvim#default-commands`, to make it work you need to be in your current
  > file path and run only `nvim` to get your last session.

- Markdown live server:
  > To preview markdown files, you only need to run `:MarkdownPreview` in the vim line command,
  > of course if you don't need this feature, just remove it this plugin in plugins setup file: `~/.config/nvim/lua/config/set-plugins.lua`
- Quotes enclose:
  > There is a feature in Vscode really nice that neovim doesn't have by default: `Hello world` -> `"Hello world"`
  >
  > I code it this feature, in visual mode you just need to select your word or your sentece and just press `"` or `'` or `(`
  > and you have you selected sentece enclosed.
  >
  > This feature is in the keymaps file: `~/.config/nvim/lua/config/core/keymaps.lua`

<!-- - LSP (support for many languages) -->

- Code auto-completion

  > A pretty auto-completion box with icons and colors, if you want to edit this config just see this file: `~/.config/nvim/lua/config/plugins/nvim-cmp.lua`

- Hexadecimal color hightlighting (very useful for web develpers)

## KEYMAPS

I recommend you to learn (if you don't know) about [Vim Vanilla keybindings](https://gist.github.com/hansrajdas/6520d74ac3251552e66a76f2f32b4bdd).

My leader keymap is the space key, if you want to edit or add your own keymaps you can edit any of these keymap in the next path: `~/.config/nvim/lua/config/core/keymaps.lua`

My basic custom keymaps:

| keymap      | Mode   | Action                              |
| ----------- | ------ | ----------------------------------- |
| jk          | insert | switch to normal mode               |
| rr          | normal | select a entire line of code        |
| ii          | visual | exit the select code in visual mode |
| leader + s  | normal | save the current file               |
| leader + nh | normal | clear search highlights             |
| leader + fw | normal | find a hovered word                 |
| control + a | normal | select the entire file              |

Move lines of code:
| keymap | Mode | Action |
| ------- | ------ | ----------------------------------- |
| alt + j | normal | move to down a entire line of code |
| alt + k | normal | move to up a entire line of code |
| alt + K | visual | move to up a entire block of code |
| alt + J | visual | move to down a entire block of code |

Nvim tree:

| keymap     | Mode   | Action                             |
| ---------- | ------ | ---------------------------------- |
| leader + b | normal | toggle the nvim-tree file explorer |

Tmux windows spliter:
| keymap | Mode | Action |
| ----------- | ------ | --------------------------------------- |
| leader + sv | normal | split window vertically |
| leader + sh | normal | split window horizontal |
| leader + se | normal | make split windows equal width & height |
| leader + sx | normal | close window splited |

Tmux moves:
| keymap | Mode | Action |
| ----------- | ------ | --------------------------------------- |
| leader + h | normal | move to left window |
| leader + l | normal | move to right window|
| leader + k | normal | move to up window|
| leader + j | normal | move to down window|

Windows splited resize:
| keymap | Mode | Action |
| ----------- | ------ | --------------------------------------- |
| leader + fh | normal | increse vertical size |
| leader + fl | normal | decrese vertical size|
| leader + fk | normal | increse horizontal size|
| leader + fj | normal | decrese horizontal size|
| leader + sm | normal | maximize a splited window|

Telscope keymaps:
| keymap | Mode | Action |
| ----------- | ------ | --------------------------------------- |
| leader + ff | normal | Open telescope files finder |
| leader + fb | normal | Open telescope files buffer |
| leader + fg | normal | Open telescope grep |
| leader + fc | normal | Open current buffer fuzzy finder |
| leader + ft | normal | Open entire telescope |

Comments:
| keymap | Mode | Action |
| ----------- | ------ | --------------------------------------- |
| gc | normal & visual | to comment a line or a block of code (recommended) |
| control + / | normal & visual | if you really like vscode's ways to comment code |

<!-- Terminal: -->
<!-- | keymap | Mode | Action | -->
<!-- | ----------- | ------ | --------------------------------------- | -->
<!-- | leader + nrh | normal | toggle new floating ranger terminal | -->
<!-- | leader + nth | normal | toggle new floating blank terminal | -->

Tabs moves:
| keymap | Mode | Action |
| ---------- | ------ | ------------ |
| alt + . | normal | next tab |
| leader + w | normal | next tab |
| alt + , | normal | previous tab |
| leader + q | normal | previous tab |
| alt + x | normal | close tab |
| leader + x | normal | close tab |

Nvim-tree files actions

> These actions work only if you're over the nvim-tree section.

| keymap      | Mode   | Action                                |
| ----------- | ------ | ------------------------------------- |
| a           | normal | create a new file or directory        |
| j & k       | normal | to move up and down through the files |
| o           | normal | open files and directories            |
| d           | normal | remove a file to trash                |
| D           | normal | remove a file with no backup          |
| leader + jf | normal | create a new file                     |

Clipboard

| keymap      | Mode   | Action                  |
| ----------- | ------ | ----------------------- |
| leader + mn | normal | enable local Clipboard  |
| leader + m, | normal | disable local Clipboard |

## COLORSCHEMES

<!-- I got installed some colorschemes, you can remove or add your favorite colorscheme. -->

<!-- To switch colorschemes I have a python script that makes that easier called [pykitty](https://github.com/freddyvelarde/pykitty) -->

These are my colorschemes installed, if you want, you can add or remove any colorscheme.

> ADVICE: If you going to install a colorscheme make sure that it's compatible with tree-sitter highlight support. [themes](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Colorschemes)

<!-- - [Material Ocean](https://github.com/marko-cerovac/material.nvim) (by default) -->
<!--   ![material](../../assets/nvim-gallery/colorschemes/material-ocean.png) -->
<!-- - [Moonlight](https://github.com/shaunsingh/moonlight.nvim) -->
<!--   ![material](../../assets/nvim-gallery/colorschemes/moonlight.png) -->
<!-- - [Oceanic next](https://github.com/mhartington/oceanic-next) -->
<!--   ![material](../../assets/nvim-gallery/colorschemes/oceanic.png) -->
<!-- - [Onedark DARK](https://github.com/olimorris/onedarkpro.nvim) -->
<!--   ![material](../../assets/nvim-gallery/colorschemes/onedark.png) -->
<!-- - [Pinkmare](https://github.com/Matsuuu/pinkmare) -->
<!--   ![material](../../assets/nvim-gallery/colorschemes/pinkmare.png) -->

- [Tokyo night](https://github.com/folke/tokyonight.nvim)
  ![material](../../assets/nvim-gallery/colorschemes/tokyo.png)

## FUTURE FEATURES

- I want to add folding code, like VScode, if I don't find one, I will code it by myself.
- I also want to make a auto set-up for LSP.

## SPECIAL THANKS TO

My config is based in [Josean's youtube tutorial](https://www.youtube.com/watch?v=vdn_pKJUda8&t=3659s)

## SOME TIPS

- use `zz` to center your code.
- watch this [video](https://www.youtube.com/watch?v=o4X8GU7CCSU&t=171s) if you're a beginner users.
- If you want to edit some options like the _relative numbers_, edit this file `~/.config/nvim/lua/config/core/options.lua`

### CONCLUSION

I hope this helps you to get a cool neovim config, If you have an issue you can contact me through reddit or open a github issue (if it could be do)

> if you have installed my config and everything went good, please follow me on github, that makes me happy :heart:
