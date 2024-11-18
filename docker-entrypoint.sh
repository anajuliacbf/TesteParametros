#!/bin/sh

# Verifica se a variável está presente
echo "Valor de INTERNALTEXT: $INTERNALTEXT"

# Substitui o placeholder ${INTERNALTEXT} no index.html
# Primeira parte do código lê, e a segunda escreve
envsubst < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index2.html

# Copia o conteúdo do index2 para o index
cp /usr/share/nginx/html/index2.html /usr/share/nginx/html/index.html

# Exibe o resultado para verificação
cat /usr/share/nginx/html/index.html

# Executa o Nginx
exec "$@"
