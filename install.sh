#!/bin/bash

echo "🚀 Starting Ultimate Terminal Setup (Zsh + Zoxide + fzf)..."

# 1. Detect Package Manager and Install Zoxide
echo "📦 Installing zoxide..."
if command -v brew &> /dev/null; then
    brew install zoxide
elif command -v apt &> /dev/null; then
    sudo apt update && sudo apt install -y zoxide
elif command -v dnf &> /dev/null; then
    sudo dnf install -y zoxide
elif command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm zoxide
else
    echo "❌ Package manager not found. Please install zoxide manually."
    exit 1
fi

# 2. Install Oh My Zsh (if not installed)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "🌟 Installing Oh My Zsh..."
    RUNZSH=no CHSH=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "✅ Oh My Zsh is already installed."
fi

# 3. Install fzf via Git (Recommended method)
if [ ! -d "$HOME/.fzf" ]; then
    echo "🔍 Installing fzf..."
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all
else
    echo "✅ fzf is already installed."
fi

# 4. Configure .zshrc
echo "⚙️  Configuring .zshrc..."

# Check and add Zoxide
if ! grep -q 'zoxide init zsh' ~/.zshrc; then
    echo -e '\n# Initialize Zoxide' >> ~/.zshrc
    echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
fi

# Check and add modern fzf integration
if ! grep -q 'fzf --zsh' ~/.zshrc; then
    echo -e '\n# Initialize fzf' >> ~/.zshrc
    echo 'export PATH="$HOME/.fzf/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$($HOME/.fzf/bin/fzf --zsh)"' >> ~/.zshrc
fi

echo "🎉 Installation complete!"
echo "👉 Please restart your terminal or run: exec zsh"
