cat iplist | while read line
do 
echo $line
timeout 3 curl -sk $line/apis/services | grep -oP '(?<="Env":\[).*?(?=\],)'
echo ""
done
