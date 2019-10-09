#grab current IP
currentIP=$(curl http://ifconfig.me)

#grab all dns records from all domains
dnsRecords=$(curl "https://api.dreamhost.com/?key=&cmd=dns-list_records")

#grab currently assigned ip from dns record; grabbed the portion of code finding the ip from a forum
oldIP=$(echo "$dnsRecords" | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)")

#check if the currently assigned IP and currentIP detected are the same
if [ $currentIP != $oldIP ]
    then
    #if they do not equal, then remove old records and recreate with new IP
    curl "https://api.dreamhost.com/?key=&cmd=dns-remove_record&record=your.domain.here&type=A&value="$oldIP""
    curl "https://api.dreamhost.com/?key=&cmd=dns-add_record&record=your.domain.here&type=A&value="$currentIP""
    else
    #No change and output that result
    echo "No change to WAN IP. Keep it at "$oldIP
fi
