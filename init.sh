# Audio is kind of broken by default for Intel chipsets on Ubuntu
# https://wiki.ubuntu.com/Audio/UpgradingAlsa/DKMS
sudo apt-add-repository ppa:ubuntu-audio-dev/alsa-daily
# FFMPeg
sudo apt-get update
sudo apt-get install -y build-essential dkms alsa-tools libasound2-dev libasound2 alsa-base alsa-utils git automake pkg-config libsndfile-dev libmp3lame-dev libshout3-dev libxml2-dev libtag1-dev libtagc0-dev libvorbis-dev ffmpeg
sudo apt-get install -y linux-image-extra-`uname -r`
sudo apt-get install -y --reinstall linux-image-extra-`uname -r`
sudo apt-get install -y oem-audio-hda-daily-dkms
sudo apt-get autoremove -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo usermod -a -G audio vagrant

wget -q http://downloads.xiph.org/releases/ezstream/ezstream-0.6.0.tar.gz
tar xzf ezstream-0.6.0.tar.gz
cd ezstream-0.6.0

./configure && make && sudo make install

cp -u /vagrant/ezstream-hcr.xml /home/vagrant/ezstream.xml
cp -u /vagrant/ezstream-start.sh /home/vagrant/ezstream-start.sh
chown vagrant /home/vagrant/ezstream.xml
chmod 400 /home/vagrant/ezstream.xml

sudo ldconfig