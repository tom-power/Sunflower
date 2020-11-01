# x11
apt update
apt install --no-install-recommends -y \
	xorg xauth xvfb \
	git

# sunflower
apt install --no-install-recommends -y \
	libgirepository1.0-dev gcc libcairo2-dev pkg-config python3-dev gir1.2-gtk-3.0 \ # https://pygobject.readthedocs.io/en/latest/getting_started.html#ubuntu-getting-started
	gir1.2-notify-0.7 gir1.2-vte-2.91 libgtk-3-dev \
	python3-pip

# project
cd /home/vagrant
if [ ! -d "Sunflower" ] ; then
    git clone https://github.com/tom-power/Sunflower.git
		cd Sunflower && git config core.fileMode false && chown -R vagrant:vagrant ./
fi

# intellij
apt update && apt install --no-install-recommends -y \
	snapd
sudo snap install pycharm-community --classic || true
sudo echo "snap run pycharm-community" > /home/vagrant/intellij.sh && sudo chmod +x /home/vagrant/intellij.sh