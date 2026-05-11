echo "[1/3] Removing claude-code if it's installed on your macbook..."
if claude --version &>/dev/null 2>&1; then
    echo "...uninstalling claude code"

    rm ~/.local/bin/claude

    #remove installation
    rm -rf ~/.local/share/claude

    #remove global settings
    rm -rf ~/.claude

    #remove auth tokens
    rm -f ~/. claude.json
    
    # remove cache (optional but thorough) 
    rm -rf ~/.cache/claude

    if ! claude --version &>/dev/null 2>&1; then
        echo "...successfully uninstalled claude code"
    fi
else
    echo "...claude-code is not installed, moving to next step"
fi

echo "[2/3] Opening docker..."
if ! docker --version &>/dev/null 2>&1; then
    echo "...❌ docker is not installed, please install docker"
    echo "... exiting installation early"
else
   open -a Docker
fi

echo "[3/3] Creating docker container with claude-code."
while true; do
    read -s -p "Enter your Anthropic API key (it can be found on this website: https://platform.claude.com/settings/keys): " ANTHROPIC_API_KEY
    echo
    if [ -n "$ANTHROPIC_API_KEY" ]; then
        break
    fi
    echo "...API key cannot be empty, please try again"
done
export ANTHROPIC_API_KEY
docker compose build --no-cache
docker compose run claude