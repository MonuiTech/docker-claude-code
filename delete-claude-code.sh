echo "Checking if Claude-code is installed..."
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
        echo "✅ Successfully uninstalled claude code"
    fi
else
    echo "🏁 Claude is not installed, no further action required"
fi