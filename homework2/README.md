Bash script. 
netstat -tunapl | awk '/firefox/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort | tail -n5 | grep -oP '(\d+\.){3}\d+' | while read IP ; do whois $IP | grep 'Organization' ; donehay


# netstat -tunapl | awk '/firefox/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort | tail -n5 | 
# grep -oP '(\d+\.){3}\d+' | while read IP ; do whois $IP | grep 'Organization' ; done

# -p --pid pid
# -a --app app
# -c --count count

# Examples
# ./script.sh -p 10 -a firefox -c 10
# ./script.sh --pid 10 --app firefox --count 10
# ./script.sh -p 10 -a firefox -c 10 -m
# ./script.sh --pid 10 --app firefox --count 10 --more