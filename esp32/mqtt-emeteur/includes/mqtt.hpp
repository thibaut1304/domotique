# pragma once

# include <PubSubClient.h>
# include <RCSwitch.h>

# include "../includes/topics-mqtt.hpp"
# include "../secret.hpp"

WiFiClient espClient;
PubSubClient client(espClient);
RCSwitch mySwitch = RCSwitch();

void reconnect() {
  while (!client.connected()) {
    if (client.connect("ESP32Client", MQTT_USERNAME, MQTT_PASSWORD)) {
      Serial.println("connected");
      client.subscribe(mqtt_setOn);

	  client.subscribe(led_setOn);
      client.subscribe(led_setBrightness);
      client.subscribe(led_setHue);
      client.subscribe(led_setSaturation);

      client.subscribe(led_effect_setFade);
      client.subscribe(led_effect_setFlash);
      client.subscribe(led_effect_setSmooth);
      client.subscribe(led_effect_setStrobe);

    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      delay(5000);
    }
  }
}
