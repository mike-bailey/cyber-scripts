let memgb=$(awk '/MemTotal/{print $2}' /proc/meminfo)/1000000
if [ $memgb -lt 1 ]; 
then
	echo You have less than 1GB. You are GONNA HAVE A BAD TIME
else
	echo You have 1GB RAM or more. Good stuff.
fi
apt-get install nmap -y &> /dev/null
