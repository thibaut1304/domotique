# Utiliser l'image Debian Buster comme image de base
FROM debian:buster

# Mettre à jour les paquets et installer les dépendances nécessaires
RUN apt-get update && \
    apt-get install -y \
    curl \
    openssh-server \
    sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Installer CasaOS (remplacer par la commande d'installation correcte de CasaOS)
# Par exemple :
# RUN curl -sSL https://get.casaos.io | sh

# Configurer le serveur SSH
RUN mkdir /var/run/sshd && \
    echo 'root:casaospassword' | chpasswd && \
    sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config && \
    sed -i 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

COPY script/start.sh /start.sh
RUN chmod +x /start.sh

# Définir la commande pour exécuter CasaOS (remplacer par la commande réelle)
CMD ["/start.sh"]
