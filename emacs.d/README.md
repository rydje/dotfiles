# Emacs

## Description
Setup emacs config

## Link init.el file
   - `early-init.el` disable package.el because we use straight
   - `init.el` setup straight, use-package and org
   - `org-init.org` actual emacs config. org file will be compiled to .el file

## MacOS only
If you're on MacOS you might have some bindings that does not work:
- `C-SPC` unbind in Settings > Keyboard > Keyboard Shortcuts... > Input Sources > Disable "Select the previous input source"
- Paredit barf/slurp `C-<left>`/`C-<right`

## Create a symlink, start emacs, enjoy
```
cd ~/
mv .emacs.d .emacs.d.bck
ln -s ~/Projects/dotfiles/emacs.d .emacs.d
```