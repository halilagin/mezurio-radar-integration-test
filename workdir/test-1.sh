

qrcodeFile=radarbase-halil-mezurio-qrcode.png 


qrcode=$(zbarimg $qrcodeFile)
url=$(echo $qrcode | cut -d ":" -f 3)
url=https:$url
echo $url >qrcode.txt
cat qrcode.txt

