#!/bin/sh

# Verifica se a variável está presente
echo "Valor de INTERNALTEXT: $INTERNALTEXT"

# Substitui o placeholder ${INTERNALTEXT} no index.html
envsubst '$INTERNALTEXT' < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html

# Exibe o resultado para verificação
cat /usr/share/nginx/html/index.html

# Executa o Nginx
exec "$@"


#!/bin/sh
