#PATH VARIABLES
#export PATH=$PATH

export LD_LIBRARY_PATH=/opt/arrayfire/lib:$LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=/opt/arrayfire/lib:$DYLD_LIBRARY_PATH

export EDITOR=subl

export OMP_NUM_THREADS=8
export JULIA_NUM_THREADS=8

# Get on the uvm super computer
alias vacc='ssh jpowers4@vacc-user1.uvm.edu'

proj() {
  cd /Users/powers/Documents/Joshua/Projects/$1
}

ml() {
  cd /Users/powers/Documents/Learning/Udemy/MLCourse
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

# Compress
# tar -czvf name-of-archive.tar.gz /path/to/directory-or-file

# Extract
# tar -zxvf yourfile.tar.gz
