#!/bin/sh

# Substitui o placeholder ${INTERNALTEXT} no index.html
envsubst '$INTERNALTEXT' < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html

# Executa o Nginx
exec "$@"
