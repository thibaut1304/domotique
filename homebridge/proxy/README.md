# proxy

Requiered:
 - bash  
 - jq  
 - docker

Penser à retirer le flag '--staging' à certbots  
Penser à retirer le flag '--no-cache' du build  

Besoin d'un fichier .env avec  
# true | false | empty  
CERTIFICATE=false  
  
# ip | false | empty  
DNS=  
  
CONTAINER_NAME=duckdns-proxy  
IMAGE_NAME=duckdns-proxy  
  
VOLUME_HOST=$(pwd)/copy_files_duck-dns  
VOLUME_CONTAINER=/copy_files_duck-dns  
  

TOTO  
- Verifier si cron est bien fonctionnel -> n'est pas fonctionnel, voir pour renouveller ssl Cryptbot  
  - Ou contener docker avec uniquement cron puis connection ssh pour tache. Pour mettre une image avec systemd  
- check : nginx: [error] open() "/run/nginx/nginx.pid" failed (2: No such file or directory)  
