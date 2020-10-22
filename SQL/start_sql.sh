
# START SQL
openrc default
/etc/init.d/mariadb setup
rc-service mariadb start

# CREATE DATABASE
echo "CREATE DATABASE wordpress" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'admin' WITH GRANT OPTION" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES" | mysql -u root --skip-password

# STOP SQL
rc-service mariadb stop

# SAFE SQL
/usr/bin/mysqld_safe --datadir='/var/lib/mysql'

bash