# Mac

```sh
git clone ssh://madknight@git.code.sf.net/p/gvimsettings/code ~/Documents/gvimsettings
ln -s Documents/gvimsettings/_vimrc ~/.vimrc
```

# Windows

```cmd
scoop install vim
git clone ssh://madknight@git.code.sf.net/p/gvimsettings/code gvimsettings-code
```

As an adminitrator

```cmd
mklink %USERPROFILE%\_vimrc gvimsettings-code\_vimrc
```
