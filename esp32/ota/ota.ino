#include "include.hpp"

const int ledPin = 2;  // La plupart des ESP32 utilise le GPIO 2 pour la LED intégrée

void setup() {
  Serial.begin(115200);
  setup_wifi();
  Serial.print("Go output led ");

  pinMode(ledPin, OUTPUT);
  ArduinoOTA.begin();
}

void loop() {
  ArduinoOTA.handle();  // Permet à l'ESP32 de vérifier les mises à jour OTA

  digitalWrite(ledPin, HIGH);  // Allume la LED
  delay(500000);                  // Attend 500ms
//   digitalWrite(ledPin, LOW);   // Éteint la LED
//   delay(500000);                  // Attend 500ms
}
