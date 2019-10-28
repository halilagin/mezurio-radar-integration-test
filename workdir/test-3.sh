token=$(cat token_received.txt)


refreshToken=$(echo $token |jq -r ".refreshToken")
baseUrl=$(echo $token |jq -r ".baseUrl")
privacyPolicyUrl=$(echo $token |jq -r ".privacyPolicyUrl")


echo $refreshToken
echo $baseUrl
echo $privacyPolicyUrl

