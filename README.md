# nvim-settings

Steps for these settings:

1. Ensure that Neovim is up to date

2. Install Plug: https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

3. Run :PlugInstall

4. Use :Mason and :MasonInstall to install language servers

5. Install Nodejs and NPM for typescript-language-server

6. If Treesitter keeps failing to download the parsers, then change the ensured
   languages into a list of the languages you need. Ex: {"cpp", "c", "python"}
