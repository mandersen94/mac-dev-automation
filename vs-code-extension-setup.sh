#! /bin/sh
brew bundle --file=- <<EOF
  cask "visual-studio-code"
EOF

export PATH="$HOME/env:$PATH"

code --install-extension aaron-bond.better-comments
code --install-extension anseki.vscode-color
code --install-extension bierner.markdown-mermaid
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension Gruntfuggly.todo-tree
code --install-extension HookyQR.beautify
code --install-extension kddejong.vscode-cfn-lint
code --install-extension markskelton.one-dark-pro-italic
code --install-extension ms-python.python
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension naumovs.color-highlight
code --install-extension oderwat.indent-rainbow
code --install-extension Prisma.vscode-graphql
code --install-extension vscodevim.vim
code --install-extension vscode-icons-team.vscode-icons
