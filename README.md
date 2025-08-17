# nvim-settings

Steps for these settings:

1. Ensure that Neovim is up to date

2. Install Git and add it to path 

3. Install Plug: https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

4. Run :PlugInstall

5. Use :Mason and :MasonInstall to install language servers

6. Install all languages and make sure they are added to path:
   * Install Nodejs and NPM for typescript-language-server, HTML, and CSS
   * Install dotnet for csharp
   * Install python3 and add to path

7. If Treesitter keeps failing to download the parsers, then change the ensured
   languages into a list of the languages you need. Ex: {"cpp", "c", "python"}
