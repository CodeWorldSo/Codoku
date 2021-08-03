apt upgrade -y
apt install mongodb
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt install nodejs curl graphicsmagick -y
npm install -g n
cd /opt
curl -L https://rocket.chat/releases/latest/download -o rocket.chat.tgz
tar -zxvf rocket.chat.tgz
mv bundle Rocket.Chat
cd Rocket.Chat/programs/server
npm install
