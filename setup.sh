#!/bin/bash

# --- Styling ---
GREEN='\033[38;5;46m'
CYAN='\033[38;5;51m'
NC='\033[0m'

echo -e "${CYAN}Installing McdBash for Linux...${NC}"

# Get absolute path of current directory
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make main command executable
chmod +x "$ROOT_DIR/mcd"
for script in "$ROOT_DIR/scripts"/*.sh; do
    chmod +x "$script"
done

# Add to PATH (Bash)
if [[ ":$PATH:" != *":$ROOT_DIR:"* ]]; then
    echo "export PATH=\"\$PATH:$ROOT_DIR\"" >> ~/.bashrc
    echo -e "${GREEN}✔ Added to ~/.bashrc${NC}"
fi

# Add to PATH (Zsh)
if [ -f ~/.zshrc ]; then
    if [[ ":$PATH:" != *":$ROOT_DIR:"* ]]; then
        echo "export PATH=\"\$PATH:$ROOT_DIR\"" >> ~/.zshrc
        echo -e "${GREEN}✔ Added to ~/.zshrc${NC}"
    fi
fi

echo -e "\n${GREEN}Installation Complete!${NC}"
echo -e "Please restart your terminal or run: ${CYAN}source ~/.bashrc${NC}"
echo -e "Now you can use ${CYAN}mcd -h${NC} from anywhere."
