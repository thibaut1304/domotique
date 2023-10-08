#include <Adafruit_NeoPixel.h>

#include <WiFi.h>
#include <ESPmDNS.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>

#define PIN1 19
#define NUM_LEDS 300

const char* ssid = "ERROR-404";
const char* password = "";

Adafruit_NeoPixel strip1 = Adafruit_NeoPixel(NUM_LEDS, PIN1, NEO_GRB + NEO_KHZ800);

void setup() {
  Serial.begin(115200);
  strip1.begin();

  // Connexion WiFi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(250);
    Serial.print(".");
  }
  Serial.println("\nConnecté au réseau WiFi");

  // Lancer OTA
  ArduinoOTA.setHostname("ESP32-OTA");
  ArduinoOTA.begin();

  Serial.println("Prêt pour OTA");
}

void loop() {
  ArduinoOTA.handle();

    for(int i=0; i<strip1.numPixels(); i++) {
      strip1.setPixelColor(i, strip1.Color(0,255,0)); // Rouge
      strip1.show();
      delay(50);
      strip1.setPixelColor(i, strip1.Color(0,0,0)); // Éteindre
  }
  // Ici, vous pouvez ajouter votre code pour les LEDs ou d'autres fonctionnalités
}




// esptool.py --chip esp32 --port [adresse_ip_de_votre_esp32] --baud 115200 write_flash -fs 4MB -fm dout 0x0 [chemin_vers_votre_fichier_bin]
