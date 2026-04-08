# replace ./.zshrc with the one in this repo
cp ./.zshrc ~/.zshrc

# src 
source ~/.zshrc

# Install Homebrew
# check if homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed"
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed"
fi

# install node js
# check if node is installed
if ! command -v node &> /dev/null; then
    echo "Node is not installed"
    echo "Installing Node..."
    brew install node
else
    echo "Node is already installed"
fi

# install nvm
# check if nvm is installed
if ! command -v nvm &> /dev/null; then
    echo "NVM is not installed"
    echo "Installing NVM..."
    brew install nvm
else
    echo "NVM is already installed"
fi

# flycut
if ! command -v flycut &> /dev/null; then
    echo "Flycut is not installed"
    echo "Installing Flycut..."
    brew install flycut
else
    echo "Flycut is already installed"
fi

# mitmproxy
if ! command -v mitmproxy &> /dev/null; then
    echo "Mitmproxy is not installed"
    echo "Installing Mitmproxy..."
    brew install mitmproxy
else
    echo "Mitmproxy is already installed"
fi
