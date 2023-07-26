# Utiliser alpine comme base
FROM alpine:latest

# Mettre à jour les packages et installer nginx et openssl
RUN apk add --update nginx openssl

# Créer un répertoire pour les certificats
RUN mkdir -p /etc/nginx/ssl

# Générer des certificats auto-signés
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=92/L=Clichy/O=42/CN=thibaut1304" -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt

# Copier la configuration nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
