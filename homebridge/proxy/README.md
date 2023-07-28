# proxy

Requiered bash  

Penser à retirer le flag '--staging' à certbots  
Penser à retirer le flag '--no-cache' du build  

Besoin d'un fichier .env avec  
	CERTIFICATE= true | false | empty  
	CONTAINER_NAME=  
	IMAGE_NAME=  
	HTTP_PORT=  
	HTTPS_PORT=  
	DNS=	ip | false | empty  


TOTO  
- Verifier si cron est bien fonctionnel -> n'est pas fonctionnel, voir pour renouveller ssl Cryptbot  
  - Ou contener docker avec uniquement cron puis connection ssh pour tache. Pour mettre une image avec systemd  
- check : nginx: [error] open() "/run/nginx/nginx.pid" failed (2: No such file or directory)  
