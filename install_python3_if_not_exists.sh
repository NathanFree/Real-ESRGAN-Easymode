#!/bin/bash

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null
then
    # Python 3 is not installed
    echo "Python 3 is not installed."

    # Install Python 3 based on OS
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        if command -v apt-get &> /dev/null; then
            sudo apt-get update && sudo apt-get install -y python3
        elif command -v yum &> /dev/null; then
            sudo yum install -y python3
        elif command -v pacman &> /dev/null; then
            sudo pacman -Syu python
        else
            echo "Unsupported package manager."
            exit 1
        fi
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OS
        if command -v brew &> /dev/null; then
            brew install python
        else
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            brew install python
        fi
    elif [[ "$OSTYPE" == "msys" ]]; then
        # Windows (MSYS2)
        if command -v pacman &> /dev/null; then
            pacman -Syu --noconfirm python
        else
            echo "Unsupported package manager."
            exit 1
        fi
    else
        echo "Unsupported OS."
        exit 1
    fi
fi