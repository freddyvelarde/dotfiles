<div style="display: flex; justify-content: center; align-items: center">
  <img src="../../.screenshots/nvim-gallery/nvim-logo.png" width="50" height="50" style="margin-bottom: 15px; margin-right: 10px "  />
  <h1>My Neovim config</h1>
</div>

<!-- # Neovim config -->
<!--  -->
<!-- ![neovim view](../../.screenshots/nvim-screen1.0.png) -->
<!--  -->
<!-- > colorscheme: moonlight, font: JetBrains Mono -->
<!--  -->
<!-- I used to code in VSCode but I discovered neovim and immediately fell in love. VSCode is a such a good editor, but I felt something was not right, because when I installed some plugins, VSCode was very slow -->
<!--  -->
<!-- I'm trying to set up my neovim editor like an editor very powerfull, something like VSCode. -->
<!--  -->
<!-- I'm using -->
<!-- [packer.nvim](https://github.com/wbthomason/packer.nvim) -->
<!--  -->
<!-- Themes support with tree-sitter syntax hightlighting: -->
<!-- [themes](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Colorschemes) -->
<!--  -->
<!-- Extensions for neovim: [Extensions](https://github.com/rockerBOO/awesome-neovim) -->

## I. Introduction

This is my Neovim configuration, I tried to emulate the Visual Studio Code UI (because I really like the VScode UI) but at same time I use all the Neovim performance.

### Why choose nvim?

I choose neovim because I do love the idea to leave behind the mouse and always use the keyboard for everything (I am a big fan of mechanical keyboards :smile:)
Also you can make your nvim editor as minimal as you can or you can take your editor to the next level of customization and make incredible features with lua script, that's something that in VsCode or another text editor I can't do

## II. Features

- Session Project Manager
- Markdown live server
- LSP (support for many languages)
- Code autocompletation
- Colorschemes pre-installed with hightlighting support

<!-- A. Built-in packages and commands -->
<!-- B. Modal interface -->
<!-- C. Customizable UI -->
<!-- D. Integration with plugins -->
<!-- E. Cross-platform compatibility -->
<!--  -->

## III. Plugins

You can add or remove all plugins you want in the next path `~/.config/nvim/lua/config/set-plugins.lua`.

<!-- A. Popular plugins -->
<!-- B. How to install plugins -->
<!-- C. How to manage plugins -->
<!--  -->

## IV. Keymaps

I recomend you to learn if you don't know the [Vim Vanilla keybindings](https://gist.github.com/hansrajdas/6520d74ac3251552e66a76f2f32b4bdd).

> My leader keymap is space key, you can edit any of these keymap in the next path: `~/.config/nvim/lua/config/core/keymaps.lua`

### My custom keybindings:

Basic keymaps:

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
| ----------- | ------ | ----------------------------------- |
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

Comments:
| keymap | Mode | Action |
| ----------- | ------ | --------------------------------------- |
| gc | normal & visual | to comment a line or a block of code (recommended) |
| control + / | normal & visual | if you really like vscode's ways to comment code |

Tabs moves:
| keymap | Mode | Action |
| ----------- | ------ | --------------------------------------- |
| alt + . | normal | next tab |
| leader + w | normal | next tab |
| alt + , | normal | previous tab |
| leader + q | normal | previous tab |
| alt + x | normal | close tab |
| leader + x | normal | close tab |

### surroundings:

It's easiest to explain with examples. Press cs"' inside:
`"Hello world!"` to change it to `'Hello world!'`

> This is an external plugin if you want to know more, visit [this](https://github.com/tpope/vim-surround)

Also if you want to surrounding a entire sentence you can select your sentence and press `"` , `'`, `{`, `[`, `(`Example: Select the sentence`hello world`in visual mode press " and you'll get`"hello world"`

<!-- A. Default keybindings -->
<!-- B. How to customize keybindings -->
<!-- C. Keymaps for plugins -->
<!--  -->
<!-- V. Getting Started -->
<!-- A. Installation -->
<!-- B. Basic usage -->
<!-- C. Configuration -->
<!--  -->
<!-- VI. Conclusion -->
<!-- A. Summary of features -->
<!-- B. Comparison with other editors -->
<!-- C. Final thoughts -->
