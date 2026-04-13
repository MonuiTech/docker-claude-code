if claude --version &>/dev/null 2>&1; then
    echo "Unsintalling claude code"

    rm ~/.local/bin/claude

    #remove installation
    rm -rf ~/.local/share/claude

    #remove global settings
    rm -rf ~/.claude

    #remove auth tokens
    rm -f ~/. claude.json
    
    # remove cache (optional but thorough) 
    rm -rf ~/.cache/claude
fi

if ! claude --version &>/dev/null 2>&1; then
    echo "✅ Successfully uninstalled claude code"
fi
