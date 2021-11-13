wget https://raw.githubusercontent.com/dokku/dokku/v0.25.7/bootstrap.sh
sudo DOKKU_TAG=v0.25.7 bash bootstrap.sh
sudo dokku plugin:install-dependencies --core 
sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
sudo dokku plugin:install https://github.com/dokku/dokku-mongo.git mongo
sudo dokku plugin:install https://github.com/dokku/dokku-redis.git redis
sudo dokku plugin:install https://github.com/dokku/dokku-letsencrypt.git
sudo dokku plugin:install https://github.com/ribot/dokku-slack.git
wget https://raw.githubusercontent.com/ledokku/ledokku/v0.7.0/ledokku-bootstrap.sh
