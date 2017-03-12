echo "preparing workspace..."

echo "Install Homebrew"

if [ ! -e /usr/local/bin/brew ];then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ $? != 0 ];then
	echo "Install Homebrew failed.";
	exit $?;
else
	echo "Install Homebrew successed.";
fi


# Install Git
brew install git

# Install android-ndk
brew install android-ndk

# Install vim
brew install vim

# Install vim Plugin Manager(Vundle)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup vim
cp -v vimrc ~/.vimrc

# Install Plugin then quit
vim +PluginInstall +qall

# Install docker
brew install docker docker-machine docker-swarm

# Install chrome
brew cask install google-chrome

# ctags
brew tap universal-ctags/universal-ctags

brew install universal-ctags

# Setup bash alias
cp -v bash_alias ~/.bash_alias

# Setup bash profile
cp -v bash_profile ~/.bash_profile

source ~/.bash_profile
