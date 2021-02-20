sed '13d' etc/nginx/sites-available/default > x
mv x etc/nginx/sites-available/default
sed '36d' etc/nginx/sites-available/default > x
mv x etc/nginx/sites-available/default
service nginx restart
