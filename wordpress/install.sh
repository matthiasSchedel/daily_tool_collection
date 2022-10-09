sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-get install gpg -y
sudo apt-add-repository ppa:certbot/certbot -y
sudo apt-get update -y
sudo apt-get install certbot -y
DOMAIN=mable.ai
WILDCARD=*.mable.ai
echo $DOMAIN && echo $WILDCARD
sudo certbot -d $DOMAIN -d $WILDCARD --manual --preferred-challenges dns certonly

_acme-challenge
HMXoh4yapDYRuLuqxDhzp30hvjaCwilW1_8OPVuu8dM

_acme-challenge
Vx5ESNDAXrkrhD_MjQkbAGko0IMw1j0N5IbfUKbVAKU