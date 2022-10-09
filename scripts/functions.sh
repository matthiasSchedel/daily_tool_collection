#!
local_host='http://localhost:8000'
int_host='http://localhost:8000'
prod_host='https://new-api.listnr.tech'
host=$prod_host

activate_coupon() {
  # --quiet
  echo "'using' $1 $2"
  curl --location --request POST 'https://bff.listnr.tech/backend/activateCouponForEmail' \
    --header 'Content-Type: application/json' \
    --data-raw '{
      "email":"'$1'",
      "coupon":"'$2'"}'
}
coupons_to_add=( 'LISTNRA25PnZulCfHp4sn' 'LISTNRA27YbNmDmWoozwU' 'LISTNRA286XuvT2lvihFC' 'LISTNRA299U9XtM8wxUbc' )
email='milosh.melbourne@gmail.com'
for coupon in "${coupons_to_add[@]}"; do
  echo "Iterating over coupon element $coupon"
  activate_coupon $email $coupon
done


# activate_coupon 'matze.schedel@me.com' 'LISTNRA25PnZulCfHp4sn' 
