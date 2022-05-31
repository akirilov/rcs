if [ ! -d "$HOME/.oh-my-zsh" ]
then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  $ZSH/tools/upgrade.sh
fi
