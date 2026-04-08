# check if visual studio code is installed
if ! command -v code &> /dev/null; then
    echo "Visual Studio Code is not installed"
    echo "Installing Visual Studio Code..."
    brew install visual-studio-code
else
    echo "Visual Studio Code is already installed"
fi


# check if cursor is installed
if ! command -v cursor &> /dev/null; then
    echo "Cursor is not installed"
    echo "Installing Cursor..."
    brew install cursor
else
    echo "Cursor is already installed"
fi

# check if docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed"
    echo "Installing Docker..."
    brew install docker
else
    echo "Docker is already installed"
fi