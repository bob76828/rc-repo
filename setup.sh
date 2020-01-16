#!/bin/bash

# install related packages
function check_package_and_install() {
	PACKAGE=$1
	OPTIONS=$2
	echo "check ${PACKAGE}"
	brew list $PACKAGE > /dev/null || brew install $PACKAGE $OPTIONS
}

command -v brew >/dev/null 2>&1 || { 
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap homebrew/cask
}

echo "Install the related packages"
check_package_and_install nvm
check_package_and_install bash-completion
check_package_and_install wget
check_package_and_install git
check_package_and_install rbenv

#download git-completion.bash 
echo "git-completion.bash"
wget -N https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -P scripts/

#download bash-it
git clone https://github.com/revans/bash-it.git
./bash-it/install.sh

# download powerline font
git clone https://github.com/powerline/fonts.git
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts