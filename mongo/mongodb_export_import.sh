#!
mongo_import(url){
  mongoimport --db=the_db_name --collection=the_collection_name \
--out=the_collection_name.json --host 127.0.0.1:27017 \
-u the_username -p the_password --authenticationDatabase=admin 
}


collections=('','')
mongo_export(url, collections){
  for collection in ${collections[@]}; do
    mongoexport --db=the_db_name --collection=${collection} \
  mongoexport --uri="$url" --collection=events --out=events.json
}

TO_URL_EVENTDATA="mongodb+srv://mongodb:76g2347rgw9rtgbjk8073bh4769qwgh34t8sretg@mable-prod.ybhup.mongodb.net/event_data?retryWrites=true&w=majority"
TO_URL_SHOPIFY="mongodb+srv://mongodb:76g2347rgw9rtgbjk8073bh4769qwgh34t8sretg@mable-prod.ybhup.mongodb.net/shopify?retryWrites=true&w=majority"

'mongodb+srv://mongodb:gD3VxD5wKzBavQUp@mable-nonprod.y8bb0.mongodb.net/event_data?retryWrites=true&w=majority'

export MONGODB_URI_SHOP='mongodb+srv://mongodb:q9emrfgiuwrntiubgw3hr8gwbeß8t7hw34t879s43at7use4@mable-nonprod.y8bb0.mongodb.net/shopify?retryWrites=true&w=majority'
export MONGODB_URI_EVENTDATA='mongodb+srv://mongodb:q9emrfgiuwrntiubgw3hr8gwbeß8t7hw34t879s43at7use4@mable-nonprod.y8bb0.mongodb.net/event_data?retryWrites=true&w=majority'


FROM_URL_EVENTDATA="mongodb://mongodb:87q3z4rtuiowhqerg08iuwher8g07hser80guzhser7@127.0.0.1:28016/event_data?retryWrites=true&w=majority"
FROM_URL_SHOPIFY_PROD="mongodb://mongodb:45tzwertgwrtzuw456wrtzhwer5zertzhusdrgtzw@127.0.0.1:28015/ShopifyApp?retryWrites=true&w=majority"
FROM_URL_SHOPIFY_DEV="mongodb://mongodb:45tzwertgwrtzuw456wrtzhwer5zertzhusdrgtzw@127.0.0.1:28015/ShopifyApp?retryWrites=true&w=majority"
TO_URL="mongodb://localhost:27017"
echo "$FROM_URL to $TO_URL"
read -r -p "Are You Sure? [Y/n] " input
 
# case $input in
#       [yY][eE][sS]|[yY])
#             # echo "You say Yes"
#             mongoimport($FROM_URL)
#             mongoexport($TO_URL)
#             ;;
#       *)
#             echo "aborting"
#             exit 1
#             ;;
# esac
