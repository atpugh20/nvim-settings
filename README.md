# nvim-settings

### NEOVIM

1. Ensure that Neovim is up to date

2. Install Git and add it to path
3. Create all files that are located under the respective directory here. 

4. Use `:Mason` and `:MasonInstall` to install language servers, formatters, and linters

5. Install all languages and make sure they are added to path:
   * Install Nodejs and NPM for typescript-language-server, HTML, and CSS
   * Install dotnet for csharp
   * Install python3 and add to path

6. If there are issues with all the plugins installing, run `:Lazy` and then `:Lazy sync`
7. If tree-sitter is struggling to add all colorscheme colors, then you might have to: `npm install -g tree-sitter-cli`

### VSCODE

1. Install Visual Studio Code
2. Install the extension `Vim` by publisher vscodevim
3. Click the settings gear in the extension's screen, then click the button at the top right that is a document symbol with an arrow has the description "Open Settings (JSON)".
4. Copy and paste the JSON into the settings.json that will be opened up.


### Visual Studio


1. Add the extension VsVim
2. Create a file called `.vsvimrc`. On windows the file path is C:/Users/{user}/.vsvimrc
3. Add the contents from the respective file
