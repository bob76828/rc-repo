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

change bash-it theme to powerline-multiline
```
vim ~/.bash-profile
find the env variable BASH_IT_THEME and set powerline-multiline
open iterm2
preferences > Profiles > Text > Font > choose source code for powerline
preferences > Profiles > Text > Font > Non-ASCII Font > choose source code for powerline
```

create or insert these codes to ~/.gitconfig
```
[include]
    path = /Users/boblin/Documents/rc-repo/gitconfig
```
