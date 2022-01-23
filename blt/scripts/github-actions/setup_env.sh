#!/usr/bin/env bash

set -ev

wget https://dl-ssl.google.com/linux/linux_signing_key.pub && sudo apt-key add linux_signing_key.pub
sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt-get -y update && sudo apt-get -y install google-chrome-stable

# Create a MySQL database for drupal to use
MYSQL_ROOT_COMMAND="mysql --user=root --password=$MYSQL_ROOT_PASSWORD --host=$MYSQL_HOST --protocol=tcp"
echo "CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE_NAME\`;" | $MYSQL_ROOT_COMMAND
echo "CREATE USER '$MYSQL_USER_NAME'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD';" | $MYSQL_ROOT_COMMAND
echo "GRANT ALL ON $MYSQL_DATABASE_NAME.* TO '$MYSQL_USER_NAME'@'%';" | $MYSQL_ROOT_COMMAND
echo "FLUSH PRIVILEGES;" | $MYSQL_ROOT_COMMAND

# Print databases which drupal user can see for debugging
echo "SHOW DATABASES;" | mysql --user="$MYSQL_USER_NAME" --password="$MYSQL_USER_PASSWORD" --host="$MYSQL_HOST" --protocol=tcp

set +v
