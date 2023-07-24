const homebridge = require('homebridge');
const { Service, Characteristic } = homebridge.hap;
const mqtt = require('mqtt'); // Assurez-vous d'avoir installé le package mqtt : npm install mqtt --save

class MonPlugin {
	constructor(log, config) {
		this.log = log;
		this.config = config;

		// Configurations pour MQTT
		this.mqttOptions = {
			port: config.port,                // Utilisation de la configuration du port passé en paramètre
			username: config.username,        // Utilisation de la configuration du nom d'utilisateur passé en paramètre
			password: config.password,        // Utilisation de la configuration du mot de passe passé en paramètre
		};
		this.mqttClient = mqtt.connect('mqtt://192.168.1.12', this.mqttOptions);

		// Caractéristique du switch
		this.switchOn = false;

		// Service Switch
		this.switchService = new Service.Switch(this.config.name);

		// Définir l'état initial du switch
		this.switchService.getCharacteristic(Characteristic.On)
			.on('get', this.getSwitchOnCharacteristic.bind(this))
			.on('set', this.setSwitchOnCharacteristic.bind(this));
	}

	getServices() {
		return [this.switchService];
	}

	getSwitchOnCharacteristic(callback) {
		this.log('Obtenir l\'état du switch :', this.switchOn);
		callback(null, this.switchOn);
	}

	setSwitchOnCharacteristic(value, callback) {
		this.log('Définir l\'état du switch sur :', value);
		this.switchOn = value;

		// Envoie des données MQTT sur les topics appropriés
		if (this.switchOn) {
			this.mqttClient.publish(this.config.topicON, 'ON', { retain: true }); // ON
		} else {
			this.mqttClient.publish(this.config.topicOFF, 'OFF', { retain: true }); // OFF
		}

		callback(null);
	}
}

module.exports = (api) => {
	api.registerAccessory('caca', MonPlugin);
  }
