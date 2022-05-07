#!/bin/bash
curl -o /data/flows.json $FLOW_FILE
#curl -o /data/flows_cred.json $FLOW_FILE_CRED
sed -i 's/\/\/credentialSecret: "a-secret-key",/credentialSecret: "false"/g' /data/settings.js
npm start --cache /data/.npm -- --userDir /data
