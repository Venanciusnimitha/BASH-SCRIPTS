#!/bin/bash

# Function to check if Git is installed
check_git() {
    if command -v git &> /dev/null; then
        echo "✅ Git is already installed."
        git --version
        exit 0
    else
        echo "❗ Git is not installed. Proceeding with installation..."
    fi
}

# Function to install Git on Ubuntu/Debian
install_git_ubuntu() {
    echo "🔍 Detected Ubuntu/Debian-based system."
    sudo apt update -y
    sudo apt install -y git
}

# Function to install Git on Amazon Linux/RHEL
install_git_amazon() {
    echo "🔍 Detected Amazon Linux/RHEL-based system."
    sudo yum update -y
    sudo yum install -y git
}

# Detect OS and choose the correct package manager
detect_os_and_install() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case "$ID" in
            ubuntu|debian)
                install_git_ubuntu
                ;;
            amzn|rhel|centos)
                install_git_amazon
                ;;
            *)
                echo "❗ Unsupported operating system: $ID"
                exit 1
                ;;
        esac
    else
        echo "❗ Unable to detect operating system."
        exit 1
    fi
}

# Verify Git installation after installation
verify_git() {
    if command -v git &> /dev/null; then
        echo "✅ Git installed successfully!"
        git --version
    else
        echo "❌ Git installation failed."
        exit 1
    fi
}

# Main script flow
check_git
detect_os_and_install
verify_git
