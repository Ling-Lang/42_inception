FROM alpine:3.18

RUN apk update && apk upgrade && apk add --no-cache nginx

# Create directory for Nginx site configuration
RUN mkdir -p /etc/nginx/sites-available /etc/nginx/sites-enabled

# Copy Nginx configuration
COPY requirements/nginx/conf/jkulka.42.fr /etc/nginx/sites-available/

# Create symbolic link to enable site
RUN ln -s /etc/nginx/sites-available/jkulka.42.fr /etc/nginx/sites-enabled/jkulka.42.fr

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]

