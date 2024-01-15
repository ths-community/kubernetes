echo "** Set user credentials"

mysql -u root -p$MYSQL_ROOT_PASSWORD --execute \
"ALTER USER '$MYSQL_GICS_USER'@'%' IDENTIFIED BY '$MYSQL_GICS_PASSWORD';
GRANT ALL ON gics.* TO '$MYSQL_GICS_USER'@'%';

ALTER USER '$MYSQL_NOTI_USER'@'%' IDENTIFIED BY '$MYSQL_NOTI_PASSWORD';
GRANT ALL ON notification_service.* TO '$MYSQL_NOTI_USER'@'%';"

#mysql -u root -p$MYSQL_ROOT_PASSWORD --execute \
#"ALTER USER '$MYSQL_GRAS_USER'@'%' IDENTIFIED BY '$MYSQL_GRAS_PASSWORD';
#GRANT ALL ON gras.* TO '$MYSQL_GRAS_USER'@'%';

echo "** Finished setting user credentials"