### commands for add/configure a new host:

##### sudo mv /var/www/defaulthost.com.conf /etc/apache2/sites-available/
##### sudo a2ensite defaulthost.com.conf
##### mkdir /var/www/defaulthost.com
##### sudo systemctl restart apache2

### configure hosts file:
##### include in file hosts "etc\hosts" a line "ip + host" (192.168.22.10 defaulthost.com, for example)

### settings SGBDs for working with vagrant (Standard TCP/IP Over SSH):
##### use @phpvagrantbox for password
##### get others informations through command vagrant ssh-config
 
*for .htaccess, configure /etc/apache2/apache2.conf (AllowOverride => All)* 
*for show PHP errors, configure /etc/php/7.0/apache2/php.ini (display_errors => On)*
