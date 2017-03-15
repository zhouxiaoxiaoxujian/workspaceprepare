
# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/usr/local/opt/android-ndk
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/opt/ant
export PATH=$ANT_ROOT:$PATH

# HomeBrew Editor
export HOMEBREW_EDITOR=/usr/local/bin/vim

# Add homebrew sbin path
export SBIN=/usr/local/sbin
export PATH=$SBIN:$PATH

# Add my dev path
export PATH=$PATH:~/Dev/bin

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export OPENSSL=/usr/local/opt/openssl/bin/openssl

#ADDED BY 010 EDITOR
export PATH="$PATH:/opt/homebrew-cask/Caskroom/010-editor/latest/010 Editor.app/Contents/CmdLine"

#Homebrew github token

#Git Editor
export GIT_EDITOR=vim

#deginates editor for input when a command line tool requests an editor
export EDITOR=vim

#command line color set
export CLICOLOR=1

#LS command line colort set
export LSCOLORS=dxfxcxdxbxegedabagacad


#The following are GIT command line completions (optional but suggeted
. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWUNTRACKEDFILES=1     #... untracked files(
PS1='\u@\h:\W\[\033[31m\]$(__git_ps1 "(%s)")\[\033[0m\]\$ '

if [ -e ~/.bash_alias ];then
	source ~/.bash_alias;
fi
