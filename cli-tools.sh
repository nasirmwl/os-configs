# check if httpie is installed
# httpie is a command line HTTP client
# it is used to test and debug HTTP requests
if ! command -v http &> /dev/null; then
    echo "Httpie is not installed"
    echo "Installing Httpie..."
    brew install httpie
else
    echo "Httpie is already installed"
fi

# check if jq is installed
# jq is a command line JSON processor
# it is used to parse and manipulate JSON data
# example: jq '.key' file.json
# example: jq '.key' file.json | jq '.key'
if ! command -v jq &> /dev/null; then
    echo "Jq is not installed"
    echo "Installing Jq..."
    brew install jq
else
    echo "Jq is already installed"
fi


