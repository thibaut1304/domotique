#!/bin/sh

echo "$USERNAME:$PASSWORD" > /mosquitto/config/passwd
mosquitto_passwd -U /mosquitto/config/passwd
