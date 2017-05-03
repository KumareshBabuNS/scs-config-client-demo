#! /bin/bash


TOKEN=$(curl -k "https://p-spring-cloud-services.uaa.run.haas-89.pez.pivotal.io/oauth/token" -u p-config-server-3ca9c610-adbf-4a1f-93d7-68aac5c62823:uxgZYxpTgGQX -dgrant_type=client_credentials | jq -r .access_token);
curl -k -H "Authorization: bearer $TOKEN" -H "Accept: application/json" "https://config-467e5cd8-771e-4c8d-b4e2-413968c0b6f5.cfapps.haas-89.pez.pivotal.io/cook/cloud" | jq
