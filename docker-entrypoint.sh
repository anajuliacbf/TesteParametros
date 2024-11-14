#!/bin/sh

# Substitui o placeholder ${INTERNALTEXT} pelo valor da variável de ambiente INTERNALTEXT
envsubst '$INTERNALTEXT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Executa o Nginx
exec "$@"
