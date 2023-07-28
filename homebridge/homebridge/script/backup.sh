#!/bin/bash

. ./lib-emojy.sh

# fichier à sauvgarder
FILES=(
	/homebridge:homebridge
)

# Répertoire cible de la sauvegarde
BACKUP_DIR="/root/backup-homebridge/$(date '+%Y-%m-%d_%H_%M_%S')"

mkdir -p "$BACKUP_DIR"

# créer les dossiers cibles pour chaque fichier s'ils n'existent pas déjà
for file in "${FILES[@]}"; do
    folder=$(echo "$file" | cut -d':' -f2)
    mkdir -p "$BACKUP_DIR/$folder"
done

# Copier chaque fichier dans le dossier cible correspondant
for file in "${FILES[@]}"; do
    path=$(echo "$file" | cut -d':' -f1)
    folder=$(echo "$file" | cut -d':' -f2)
    filename=$(basename "$path")
    filename=$(basename "$path")

    if [[ "$filename" == .* ]]; then
	filename="${filename#.}"
    fi

     # Vérifier si le chemin est un répertoire ou un fichier
    if [ -d "$path" ]; then
        cp -r "$path/." "$BACKUP_DIR/$folder/"
    else
        cp "$path" "$BACKUP_DIR/$folder/$filename"
    fi

 #   mkdir -p "$BACKUP_DIR/$folder/$filename"
 #   cp -r "$path/." "$BACKUP_DIR/$folder/$filename/"
done

random_emoji=${emojis[$RANDOM % ${#emojis[@]}]}

git -C "$BACKUP_DIR" add .
git -C "$BACKUP_DIR" commit -m "$random_emoji Sauvegarde des configurations du $(date '+%Y-%m-%d')"
git -C "$BACKUP_DIR" push origin master
