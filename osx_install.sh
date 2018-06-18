## clean machine
brew list -1 | xargs brew rm
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

## pre requirements

echo Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install brew-cask
brew doctor

echo Install Dev Tools
brew install git
brew install python
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager

echo Install Dev Apps
brew cask install --appdir="/Applications" authy
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" pycharm
brew cask install --appdir="/Applications" phpstorm
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" sequel-pro

echo Install Docker Stuff
brew install docker

echo Setup Docker
docker-machine create --driver virtualbox default
docker-machine stop default
docker-machine ls

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
