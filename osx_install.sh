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

echo Install Dev Apps
brew cask install --appdir="/Applications" authy
brew cask install --appdir="/Applications" pycharm
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" visual-studio-code

echo Install Docker Stuff
brew install docker
brew cask install virtualbox

echo Setup Docker
docker-machine create --driver virtualbox default
docker-machine stop default
docker-machine ls

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*