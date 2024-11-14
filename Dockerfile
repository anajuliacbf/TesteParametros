# Pega a imagem base do Nginx
FROM nginx:latest

# Copia o arquivo de template para dentro do contêiner
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Copia o script de inicialização
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Define o script de entrada
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
