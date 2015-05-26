## Unattended mysql install
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password foobar'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password foobar'
sudo apt-get update
sudo apt-get -qqy install mysql-server-5.6 redis-server
