# Domotique IOT

## Pense a retirer --staging de la generation de certificats  let's encrypt

## Ajouter un fichier .env dans le dossier mosquitto comportant :

```bash
USERNAME="votre_username"
PASSWORD="votre_mot_de_passe"
```

## Ajouter un fichier secret.hpp dans le dossier mqtt-emeteur comportant :
```cpp
# define WIFI_SSID "votre_wifi"
# define WIFI_PASSWORD "wifi_password"

# define MQTT_SERVER "ip_broker_mqtt"
# define MQTT_PORT port				// par default 1883
# define MQTT_USERNAME "votre_username_definis_dans_env"
# define MQTT_PASSWORD "votre_password_definis_dans_env"
```

## Ajouter un fichier json "secrets.json" dans le dossier homebridge :
```bash
{
	"username" : "USERNAME_MQTT",
	"password" : "PASSWORD_MQTT"
}
```
Puis executer le script startup.sh
