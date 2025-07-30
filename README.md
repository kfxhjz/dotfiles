# 用 git 管理 dotfile

第一次使用

```bash
git init --bare $HOME/.cfg
alias cfggit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfggit config --local status.showUntrackedFiles no
echo "alias cfggit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_profile
echo "alias cfglazygit='/usr/bin/lazygit --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_profile
```

在新机器中使用已上传的 dotfile

```bash
echo ".cfg" >> .gitignore
git clone --bare https://github.com/kfxhjz/dotfiles.git $HOME/.cfg
# git clone --bare git@github.com:kfxhjz/dotfiles.git $HOME/.cfg
alias cfggit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfggit config --local status.showUntrackedFiles no
echo "alias cfggit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_profile
echo "alias cfglazygit='/usr/bin/lazygit --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_profile
```
