mysql -e "drop database zm;"
mysql -uroot -p < /usr/share/zoneminder/db/zm_create.sql
mysql -e "ALTER USER 'zmuser'@localhost IDENTIFIED BY 'zmpass';"
mysql -e "GRANT ALL PRIVILEGES ON zm.* TO 'zmuser'@'localhost' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES ;"
mysqladmin -uroot -p reload
dpkg-reconfigure tzdata
exit