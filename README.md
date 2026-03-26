# 🚀 terminal-workflow-boost
## Ultimate Guide: Zsh + Zoxide + fzf

This document is a step-by-step guide to transforming your terminal into an ultra-fast and smart tool. You will learn how to install and configure **Oh My Zsh**, **zoxide**, and **fzf**, and how to combine them to navigate your system at the speed of light.

---
## ⚡ Quick Install (Automated)

If you want to install and configure everything automatically, download and run the `install.sh` script:

```bash
chmod +x install.sh
./install.sh
```
---

## 📋 Table of Contents
1. [How to install Oh My Zsh](#1-how-to-install-oh-my-zsh)
2. [How to install zoxide](#2-how-to-install-zoxide)
3. [How to use zoxide](#3-how-to-use-zoxide)
4. [How to install fzf](#4-how-to-install-fzf)
5. [How to use fzf](#5-how-to-use-fzf)
6. [The Winning Combo: Benefits and how to combine them](#6-the-winning-combo-benefits-and-how-to-combine-them)

---

## 1. How to install Oh-My-Zsh

**Oh My Zsh** is a framework for managing your Zsh configuration. It includes hundreds of plugins and themes that will make your life easier.

### Prerequisites
Make sure you have `zsh`, `curl`, and `git` installed on your system.

### Installation
Run the following command in your terminal:
```bash
sh -c "$(curl -fsSL [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"
```
The script will clone the repository and automatically change your default shell to Zsh.

---

## 2. How to install zoxide

**zoxide** is a smarter `cd` command. It remembers which directories you use most frequently, so you can jump to them in just a few keystrokes.

### Package Installation

Depending on your operating system, run:
- macOS(Homebrew): `brew install zoxide`
- Ubuntu/Debian: `sudo apt install zoxide`
- Fedora: `sudo dnf install zoxide`
- Arch Linux: `sudo pacman -S zoxide`

### Configuration *(Mandatory step!)

For your terminal to recognize the command, you need to add it to your configuration. Run this:
```bash
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
source ~/.zshrc
```

## 3. How to use zoxide
Once installed, you will use the `z` command instead of `cd`.
`zoxide` learns from your navigation habits. At first, you'll need to move around your folders normally, but soon you'll be able to use these magic shortcuts:

- `z foo` -> Jumps to the highest-ranked directory matching "foo" (e.g., `~/Projects/foo`).
- `z foo bar` -> Jumps to the highest-ranked directory matching "foo" and "bar" (e.g., `~/Projects/foo/src/bar`).
- `z -` -> Goes back to the previous directory.
- `z ..` -> Goes up one level in the folder path.

---

## 4. How to install fzf
fzf (Fuzzy Finder) is a general-purpose command-line fuzzy finder. It allows you to search for files, history, and processes by typing fragments of words in any order.

Recommended Installation (Via Git)
This is the best way to install it to ensure you automatically activate the Zsh keyboard shortcuts:
```bash
# 1. Clone the official repository
git clone --depth 1 [https://github.com/junegunn/fzf.git](https://github.com/junegunn/fzf.git) ~/.fzf

# 2. Run the installation script
~/.fzf/install
```
(During installation, answer `y` to all prompts to enable auto-completion and key bindings).
Finally, reload your terminal:
```bash
source ~/.zshrc
```
## 5. How to use fzf
The real magic of `fzf` lies in its built-in keyboard shortcuts:

- `CTRL + R` (Search History): The most useful shortcut. Start typing parts of an old command and `fzf` will find it. Press `Enter` to paste it into your terminal.
- `CTRL + T` (Search Files): Searches for files in your current directory and its subdirectories. When you press `Enter`, it pastes the file path into the command line (great for opening files with nano, vim, or code).
- `ALT + C` (Move to Folders): Searches for a directory and automatically `cd`s into it.

**As a filter (Pipes):**
You can pipe the output of any command into `fzf` to search through it visually:
```bash
cat giant_file.txt | fzf
ps aux | fzf
```

---

## 6. The winning combo: Benefits and how to combine them

### Why is this so good/efficient?
- **Zero mental load**: You no longer need to remember extremely long absolute paths or the exact order of commands thanks to fuzzy searching.
- **Extreme speed**: What used to take multiple commands (`cd ..`, `ls`, `cd folder`), now takes just one quick command (`z folder`).
- **Maximum efficiency**: `CTRL + R` with `fzf` ensures you never have to type a complex command twice.

### ⚡ The Ultimate Combo: The `zi` command
When you have zoxide and fzf installed at the same time, you unlock a hidden superpower: the `zi` command.
`zi` combines the smart database of your frequent folders (zoxide) with the interactive visual finder (fzf).

#### How does it work?

1. Type `zi` in your terminal and press `Enter`.
2. The visual `fzf` interface will open, showing a list of your most visited folders.
3. Type any letter to filter the list instantly.
4. Select the folder using the arrow keys and press `Enter` to jump right there.

It is the ultimate way to navigate your system like a pro!

---

### AI Usage

AI was used in order to help with the writing of this README.md document.
