#!/bin/bash

# Démarrer le serveur SSH
/usr/sbin/sshd

# Garder le conteneur en cours d'exécution
curl -fsSL https://get.casaos.io | bash
