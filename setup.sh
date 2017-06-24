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
}

echo "Install the related packages"
check_package_and_install nvm
check_package_and_install bash-completion
check_package_and_install wget
check_package_and_install git

#download git-completion.bash 
echo "git-completion.bash"
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -P scripts/