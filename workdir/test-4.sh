token=$(cat token_received.txt)


refreshToken=$(echo $token |jq -r ".refreshToken")
baseUrl=$(echo $token |jq -r ".baseUrl")
privacyPolicyUrl=$(echo $token |jq -r ".privacyPolicyUrl")

URL=$baseUrl/managementportal/oauth/token

cmd_base64=$(echo -n Mezurio:123456|base64)


RESPONSE=$(curl -s -X POST  -H "Authorization: Basic ${cmd_base64}"  -H 'Content-Type: application/x-www-form-urlencoded'  -H 'cache-control: no-cache'  -d "grant_type=refresh_token&refresh_token=${refreshToken}" $URL )


echo $RESPONSE 
echo $RESPONSE > oauth.token.received.txt
