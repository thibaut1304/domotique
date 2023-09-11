#include <RCSwitch.h>

#define RF_PIN 5

RCSwitch mySwitch = RCSwitch();

void setup() {
  Serial.begin(9600);
  mySwitch.enableReceive(RF_PIN);  // Récepteur sur la broche d'interruption 0 => c'est-à-dire la broche digitale 2
}

void loop() {
  if (mySwitch.available()) {
    int value = mySwitch.getReceivedValue();
    int bitlength = mySwitch.getReceivedBitlength();
    int delay = mySwitch.getReceivedDelay();
    int protocol = mySwitch.getReceivedProtocol();

    Serial.print("Received ");
    Serial.print( value );
    Serial.print(" / ");
    Serial.print( bitlength );
    Serial.print("bit ");
    Serial.print("Protocol: ");
    Serial.print( protocol );
    Serial.print("Delay: ");
    Serial.println( delay );

    mySwitch.resetAvailable();
  }
}
