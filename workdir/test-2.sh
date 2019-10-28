URL=$(cat qrcode.txt)

#RESPONSE=$(curl -s -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' --data '{"username":"admin","password":"admin"}' $URL | jq -r '.id_token')
RESPONSE=$(curl -s -X GET -H 'Accept: application/json' -H 'Content-Type: application/json'  $URL )


echo $RESPONSE 
echo $RESPONSE > token_received.txt
