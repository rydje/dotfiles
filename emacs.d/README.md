# Emacs

## Description
Setup emacs config

## Link init.el file
   - `early-init.el` disable package.el because we use straight
   - `init.el` setup straight, use-package and org
   - `org-init.org` actual emacs config. org file will be compiled to .el file

## Create a symlink, start emacs, enjoy
```
cd ~/
mv .emacs.d .emacs.d.bck
ln -s ~/Projects/dotfiles/emacs.d .emacs.d
```