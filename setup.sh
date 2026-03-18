# replace ./.zshrc with the one in this repo
cp ./.zshrc ~/.zshrc

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install node js
brew install node

# install nvm
brew install nvm

# flycut
brew install flycut
# mitmproxy
brew install mitmproxy
