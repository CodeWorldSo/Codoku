wget -nv -O - https://get.docker.com/ | sh
wget -nv -O - https://packagecloud.io/dokku/dokku/gpgkey | apt-key add -
export SOURCE="https://packagecloud.io/dokku/dokku/ubuntu/"
export OS_ID="$(lsb_release -cs 2>/dev/null || echo "bionic")"
echo "bionic focal" | grep -q "$OS_ID" || OS_ID="bionic"
echo "deb $SOURCE $OS_ID main" | tee /etc/apt/sources.list.d/dokku.list
apt-get update
install dokku
apt-get install dokku
sudo dokku plugin:install-dependencies --core 
sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
sudo dokku plugin:install https://github.com/dokku/dokku-mongo.git mongo
sudo dokku plugin:install https://github.com/dokku/dokku-redis.git redis
sudo dokku plugin:install https://github.com/dokku/dokku-letsencrypt.git
sudo dokku plugin:install https://github.com/ribot/dokku-slack.git
