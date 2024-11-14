# Pega a imagem base do Nginx
FROM nginx:latest

# Copia o arquivo de template para dentro do contêiner
COPY index.html /usr/share/nginx/html/index.html

# Copia o script de inicialização
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 80

# Define o script de entrada
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
