#include "include.hpp"

void setup() {
  Serial.begin(115200);
  setup_wifi();
  client.setServer(MQTT_SERVER, MQTT_PORT);
  client.setCallback(callback);

//   mySwitch.enableTransmit(RF_PIN);
//   mySwitch.setProtocol(1);
//   mySwitch.setPulseLength(350);
}

void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
}
