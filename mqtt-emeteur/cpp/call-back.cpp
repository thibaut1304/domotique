#include "../includes/topics-mqtt.hpp"
#include "../includes/mqtt.hpp"
#include "../includes/codes_rf.hpp"

void callback_smoke_state(String messageTemp) {
	if (messageTemp == "ON") {
		mySwitch.send(smokeOn, 24);
		client.publish(mqtt_getOn, "ON");
	}
	else if (messageTemp == "OFF") {
		mySwitch.send(smokeOff, 24);
		client.publish(mqtt_getOn, "OFF");
	}
}

void callback_led_state(String messageTemp) {
	if (messageTemp == "ON") {
		mySwitch.send(ledOn, 24);
		delay(50);
		mySwitch.send(ledRed, 24);
		client.publish(led_getOn, "ON");
	}
	else if (messageTemp == "OFF") {
		mySwitch.send(ledOff, 24);
		client.publish(led_effect_getFade, "OFF");
		client.publish(led_effect_getFlash, "OFF");
		client.publish(led_effect_getSmooth, "OFF");
		client.publish(led_effect_getStrobe, "OFF");
		client.publish(led_getOn, "OFF");
	}
}

void callback_led_brightness(String messageTemp) {
	if (atoi(messageTemp.c_str()) >= 66 ) {
		mySwitch.send(ledBrightnessUp, 24);
		delay(50);
		mySwitch.send(ledBrightnessUp, 24);
		delay(50);
		mySwitch.send(ledBrightnessUp, 24);
	}
	else if (atoi(messageTemp.c_str()) < 66 && atoi(messageTemp.c_str()) >= 33) {
		mySwitch.send(ledBrightnessDown, 24);
		delay(50);
		mySwitch.send(ledBrightnessDown, 24);
		delay(50);
		mySwitch.send(ledBrightnessDown, 24);
		delay(50);
		mySwitch.send(ledBrightnessUp, 24);
		delay(50);
		mySwitch.send(ledBrightnessUp, 24);
	}
	else if (atoi(messageTemp.c_str()) < 33) {
		mySwitch.send(ledBrightnessDown, 24);
		delay(50);
		mySwitch.send(ledBrightnessDown, 24);
		delay(50);
		mySwitch.send(ledBrightnessDown, 24);
		delay(50);
		mySwitch.send(ledBrightnessUp, 24);
	}
}

void red_other_color(int value, String messageTemp) {
	if (value >= 11 && value <= 29) {
		mySwitch.send(ledRed2, 24);
	}
	else if (value >= 30 && value <= 40) {
		mySwitch.send(ledRed3, 24);
	}
	else if (value >= 41 && value <= 69) {
		mySwitch.send(ledRed4, 24);
	}
}

void blue_other_color(int value, String messageTemp) {
	if (value >= 189 && value <= 219) {
		mySwitch.send(ledBlue2, 24);
	}
	else if (value >= 251 && value <= 299) {
		mySwitch.send(ledBlue3, 24);
	}
	else if (value >= 300 && value <= 339) {
		mySwitch.send(ledBlue4, 24);
	}
}

void green_other_color(int value, String messageTemp) {
	if (value >= 70 && value <= 99) {
		mySwitch.send(ledGreen2, 24);
	}
	else if (value >= 171 && value <= 188) {
		mySwitch.send(ledGreen3, 24);
	}
	else if (value >= 131 && value <= 170) {
		mySwitch.send(ledGreen4, 24);
	}
}

void callback_led_hue(String messageTemp) {
	const int value = atoi(messageTemp.c_str());

	if (value >= 340 || value <= 10) {
		mySwitch.send(ledRed, 24);
	}
	else if (value >= 100 && value <= 130) {
		mySwitch.send(ledGreen, 24);
	}
	else if (value >= 220 && value <= 250) {
		mySwitch.send(ledBlue, 24);
	}
	red_other_color(value, messageTemp);
	blue_other_color(value, messageTemp);
	green_other_color(value, messageTemp);
}

void callback_led_saturation(String messageTemp) {
	const int value = atoi(messageTemp.c_str());

	if (value <= 20) {
		mySwitch.send(ledWhite, 24);
	}
}

int lastSaturation = -1;

void callback(char* topic, byte* message, unsigned int length) {
	String messageTemp;

	for (int i = 0; i < length; i++) {
	messageTemp += (char)message[i];
	}

	if (!strcmp(topic, mqtt_setOn))
		callback_smoke_state(messageTemp);
	else if (!strcmp(topic, led_setOn))
		callback_led_state(messageTemp);
	else if (!strcmp(topic, led_setBrightness)) {
		callback_led_brightness(messageTemp);
		client.publish(led_getBrightness, messageTemp.c_str());
	}
	else if (!strcmp(topic, led_setSaturation)) {
		lastSaturation = atoi(messageTemp.c_str());
		callback_led_saturation(messageTemp);
		client.publish(led_getSaturation, messageTemp.c_str());
	}
	else if (!strcmp(topic, led_setHue)) {
		if (lastSaturation >= 20 || lastSaturation == -1)
			callback_led_hue(messageTemp);
		client.publish(led_getHue, messageTemp.c_str());
	}
	if (!strcmp(topic, led_effect_setFade)) {
		if (messageTemp == "ON" || messageTemp == "OFF") {
			if (messageTemp == "ON")
				client.publish(led_getOn, "ON");
			mySwitch.send(ledEffectFade, 24);
			client.publish(led_effect_getFade, messageTemp.c_str());

			client.publish(led_effect_getSmooth, "OFF");
			client.publish(led_effect_getFlash, "OFF");
			client.publish(led_effect_getStrobe, "OFF");
		}
	}
	else if (!strcmp(topic, led_effect_setFlash)) {
		if (messageTemp == "ON" || messageTemp == "OFF") {
			if (messageTemp == "ON")
				client.publish(led_getOn, "ON");
			mySwitch.send(ledEffectFlash, 24);
			client.publish(led_effect_getFlash, messageTemp.c_str());

			client.publish(led_effect_getFade, "OFF");
			client.publish(led_effect_getSmooth, "OFF");
			client.publish(led_effect_getStrobe, "OFF");
		}
	}
	else if (!strcmp(topic, led_effect_setSmooth)) {
		if (messageTemp == "ON" || messageTemp == "OFF") {
			if (messageTemp == "ON")
				client.publish(led_getOn, "ON");
			mySwitch.send(ledEffectSmooth, 24);
			client.publish(led_effect_getSmooth, messageTemp.c_str());

			client.publish(led_effect_getFade, "OFF");
			client.publish(led_effect_getFlash, "OFF");
			client.publish(led_effect_getStrobe, "OFF");
		}
	}
	else if (!strcmp(topic, led_effect_setStrobe)) {
		if (messageTemp == "ON" || messageTemp == "OFF") {
			if (messageTemp == "ON")
				client.publish(led_getOn, "ON");
			mySwitch.send(ledEffectStrobe, 24);
			client.publish(led_effect_getStrobe, messageTemp.c_str());

			client.publish(led_effect_getFade, "OFF");
			client.publish(led_effect_getFlash, "OFF");
			client.publish(led_effect_getSmooth, "OFF");
		}
	}
}
