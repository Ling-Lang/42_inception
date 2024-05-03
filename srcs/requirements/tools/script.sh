docker container run --name my-nginx -p 443:443 \
-v /home/jkulka/Documents/42_inception/srcs/requirements/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
-v /home/jkulka/Documents/42_inception/srcs/tools/jkulka.42.fr.crt:/etc/nginx/ssl/jkulka.42.fr.crt \
-v /home/jkulka/Documents/42_inception/srcs/tools/jkulka.42.fr.key:/etc/nginx/ssl/jkulka.42.fr.key \
-d nginx
