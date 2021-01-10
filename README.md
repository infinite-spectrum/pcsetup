# My basic dev-setup guide for a Ubuntu user.

There are some settings and scripts that are useful during development, Creating a small project
to backup settings and to automate(not all) installation of settings.

Here are some steps to start with:

* ### Download and Install [VSCode]
  * #### Extensions for vscode that I would prefer are as following:
    - Updating soon.

* ### Terminal Setup

   1. Download and Install [Guake] (My choice for terminal is any drop-down style terminal.)
   
   2. Download and Install [Nerd Fonts] for Terminals. (My current nerd font choice is meslo.)

   3. Install **ZSH** shell and make it default for user and terminal.
   
   4. Download and install [oh-my-zsh].

   5. Once oh-my-zsh is installed there'll be vanilla .zshrc file in home directory.
   
   6. Please use install.sh script as described below:
   ```
      $ git clone https://github.com/infinite-spectrum/pcsetup.git
      $ cd pcsetup
      $ chmod +x install.sh
      $ ./install.sh
   ```
   
   7. To modify existing settings follow below mentioned steps:
      - Open and edit any settings from [dotfiles] or [scripts] folder.
      - Save edited files and follow **step 6** (without cloning.)

   8. Reference: My starting [.zshrc] file. (Thanks to [joncalhoun] for [reference] and inspiration.)

* ### For any improvement/suggestion please create a PR. :)

* ### Happy coding!!


[VSCode]: https://code.visualstudio.com/download
[Markdown All in One by Yu Zhang]: https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one
[Nerd Fonts]: https://nerdfonts.com/#downloads
[Guake]: http://guake-project.org/
[oh-my-zsh]: https://ohmyz.sh/
[antigen]: http://antigen.sharats.me/#installation

[reference]: https://gist.githubusercontent.com/joncalhoun/3d3401da5e159a154069eb12bb0ca296/raw/f21927bd763e977e19fc29bb872c01351ef2cad2/.zshrc
[.zshrc]: dotfiles/.zshrc
[install.sh]: install.sh
[joncalhoun]: https://github.com/joncalhoun
[dotfiles]: dotfiles
[scripts]: scripts