# Pega a imagem base do Nginx
FROM nginx:latest

# Copia o arquivo de template para dentro do contêiner
COPY index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
