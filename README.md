# nvim-settings

Steps for these settings:

1. Ensure that Neovim is up to date

2. Install Git and add it to path 

3. Use :Mason and :MasonInstall to install language servers

4. Install all languages and make sure they are added to path:
   * Install Nodejs and NPM for typescript-language-server, HTML, and CSS
   * Install dotnet for csharp
   * Install python3 and add to path

5. If there are issues with all the plugins installing, run :Lazy and then :Lazy sync
