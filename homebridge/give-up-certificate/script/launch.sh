#!/bin/sh

/etc/create_certificate.sh
crond -f
