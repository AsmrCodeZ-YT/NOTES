# How to Install ZSH on Ubuntu 23.10 | Install Oh-my-ZSH on Ubuntu 23.10 | Replace your Bash Shell

![screenshot](/src/zsh.png)




    sudo apt update
    sudo apt upgrade
    sudo apt install zsh
    sudo snap install curl

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## after that >>> install powerlevel zsh

    git clone --depth==1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo "source ~/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
    exec zsh

