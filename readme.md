## clean machine
brew list -1 | xargs brew rm
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"


## pre requirements
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

brew install git
brew install python
brew install docker


brew tap phinze/cask
brew install brew-cask

brew cask install virtualbox


echo Install Dev Apps
brew cask install --appdir="/Applications" github-desktop
brew cask install --appdir="/Applications" visual-studio-code


docker run hello-world





## List Docker CLI commands
docker
docker container --help

## Display Docker version and info
docker --version
docker version
docker info

## Execute Docker image
docker run hello-world

## List Docker images
docker image ls

## List Docker containers (running, all, all in quiet mode)
docker container ls
docker container ls --all
docker container ls -aq