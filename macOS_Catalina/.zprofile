#PATH VARIABLES
export PATH=/usr/local/anaconda3/bin:/usr/local/sbin:$PATH

export LD_LIBRARY_PATH=/opt/arrayfire/lib:$LD_LIBRARY_PATH

export EDITOR=subl

# Get on the uvm super computer
alias vacc='ssh jpowers4@bluemoon-user1.uvm.edu'

proj() {
  cd /Users/powers/Dropbox/Joshua/Github/$1
}

ml() {
  cd /Users/powers/Dropbox/Joshua/Learning/Udemy/MLCourse
  jupyter-notebook
}

# Push to github with commit message
push() {
  git add .
  git commit -m "$1"
  git push -u origin master
}

findAll() {
  ps aux | grep $1
}

killAll() {
  kill $(ps aux | grep $1 | grep -v grep | awk '{print $2}')
}

# Show hidden files in finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# Hide hidden files in finder
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Create install media
makedrive() {
  sudo "/Applications/Install macOS Catalina.app/Contents/Resources/createinstallmedia" --volume /Volumes/$1
}
