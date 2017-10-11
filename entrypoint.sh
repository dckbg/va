cd /gsnova
if [ "$SERVER_JSON" != none ]; then
  echo -e "$SERVER_JSON" > server.json
fi

if [ "$CERT_PEM" != "$KEY_PEM" ]; then
  echo -e "$CERT_PEM" > cert.pem
  echo -e "$KEY_PEM"  > key.pem
fi
./gsnova_server
