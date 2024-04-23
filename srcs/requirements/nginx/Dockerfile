FROM debian:bullseye

RUN apt update && apt install -y \
	&& --no-install-recommends \
	&& nginx \
	&& rm -rf /var/lib/apt/lists/* 

COPY conf/jkulka.42.fr /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/jkulka.42.fr /etc/nginx/sites-enabled/jkulka.42.fr

ENTRYPOINT ["nginx", "-g", "daemon off;"]
