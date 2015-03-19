let memgb=$(awk '/MemTotal/{print $2}' /proc/meminfo)/1000000
if [ $memgb -lt 1 ]; 
then
	echo You have less than 1GB. You are GONNA HAVE A BAD TIME
else
	echo You have 1GB RAM or more. Good stuff.
fi
ufw disable
apt-get update -y && apt-get upgrade -y
apt-get install nmap -y &> /dev/null
apt-get install smbclient -y &> /dev/null
apt-get install build-essential libreadline-dev libssl-dev libpq5 libpq-dev libreadline5 libsqlite3-dev libpcap-dev openjdk-7-jre git-core autoconf postgresql pgadmin3 curl zlib1g-dev libxml2-dev libxslt1-dev vncviewer libyaml-dev curl zlib1g-dev -y
