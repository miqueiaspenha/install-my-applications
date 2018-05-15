#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo apt-get install virtualbox virtualbox-qt virtualbox-guest-additions-iso -y
sudo apt-get install vagrant -y

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y
cp -t ~/.local/share/applications/ /usr/share/applications/sublime_text.desktop
sudo update-desktop-database

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update -y
sudo apt-get install code -y

sudo apt-get install git-core -y
sudo apt-get install gitg-y
sudo apt-get install gitk-y
git config --global user.name "Miqueias Penha"
git config --global user.email miqueiaspenha@gmail.com

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y

sudo apt-get install gimp -y
sudo apt-get install inkscape -y

sudo apt-get install mysql-workbench -y
sudo apt-get install sqlitebrowser -y
sudo apt-get install pgadmin3 -y

sudo add-apt-repository ppa:atareao/telegram -y
sudo apt-get update -y
sudo apt-get install telegram -y
/opt/telegram/Telegram &

RELEASE=`sed -n 's/VERSION_ID="\(.*\)"/\1/p' /etc/os-release`
sudo wget -O- http://download.opensuse.org/repositories/home:/eliostvs:/tomate/xUbuntu_$RELEASE/Release.key | sudo apt-key add -
sudo bash -c "echo 'deb http://download.opensuse.org/repositories/home:/eliostvs:/tomate/xUbuntu_$RELEASE/ ./' > /etc/apt/sources.list.d/tomate.list"
sudo apt-get update -y
sudo apt-get install tomate-gtk -y
sudo apt-get install tomate-indicator-plugin -y
sudo apt-get install tomate-notify-plugin -y
sudo apt-get install tomate-alarm-plugin -y
sudo apt-get install tomate-launcher-plugin -y

wget "http://www.dropbox.com/download/?plat=lnx.x86_64" -O dropbox.tar.gz
sudo tar -xvf dropbox.tar.gz -C /opt/
sudo rm dropbox.tar.gz
sudo mv /opt/.dropbox-dist/ /opt/dropbox
sudo ln -sf /opt/dropbox/dropboxd /usr/bin/dropbox
sudo cp dropbox.png /opt/dropbox
echo -e '[Desktop Entry]\n Version=1.0\n Name=dropbox\n Exec=/opt/dropbox/dropboxd\n Icon=/opt/dropbox/dropbox.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/dropbox.desktop
sudo chmod +x /usr/share/applications/dropbox.desktop

sudo apt-get install grsync -y

sudo apt-get install audacious -y

sudo apt-get install zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get install evolution
sudo apt-get install evolution-indicator