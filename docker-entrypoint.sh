#!/bin/sh

# Substitui o placeholder ${INTERNALTEXT} no index.html
envsubst '$INTERNALTEXT' < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html

# Substitui o placeholder ${INTERNALTEXT} no nginx.conf.template (se necessário)
envsubst '$INTERNALTEXT' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf

# Executa o Nginx
exec "$@"
