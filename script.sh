#!/bin/bash
domain=YOUR-DOMAIN-HERE.com
host=@
APIKey=YOUR-API-KEY-HERE
APISecret=YOUR-API-SECRET-HERE

WanIP=`curl -s "https://api.ipify.org"`

GDIP=`curl -s -X GET -H "Authorization: sso-key ${APIKey}:${APISecret}" "https://api.godaddy.com/v1/domains/${domain}/records/A/${host}" | cut -d'[' -f 2 | cut -d']' -f 1`

if [ "$WanIP" != "$GDIP" -a "$WanIP" != "" ]; then
curl -s -X PUT "https://api.godaddy.com/v1/domains/${domain}/records/A/${host}" -H "Authorization: sso-key ${APIKey}:${APISecret}" -H "Content-Type: application/json" -d " [{\"data\": \"${WanIP}\"}]"
fi