# Setup

```
cd ~/Documents
git clone https://github.com/bob76828/rc-repo.git
cd rc-repo
./setup.sh
```

create or insert these codes to ~/.bash_profile
```
if [ -f ~/Documents/rc-repo/bash_profile ]; then
    source ~/Documents/rc-repo/bash_profile
fi
```

create or insert these codes to ~/.gitconfig
```
[include]
    path = /Users/boblin/Documents/rc-repo/gitconfig
```
