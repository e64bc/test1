mysql  -e "create database fusion;"
mysql  -e "CREATE USER 'fusion'@'localhost' IDENTIFIED BY 'password';"
mysql  -e "GRANT ALL ON fusion.* TO 'fusion'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;"
mysql  -e "FLUSH PRIVILEGES;"
mysql fusion < fusion.sql
