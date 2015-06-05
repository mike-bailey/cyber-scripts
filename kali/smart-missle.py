#!/usr/bin/python
# Target multiple IP addresses
# I wanted to study python so here
#v0.2
import socket
targets = []
target = 'null'
while target != 'exit':
        if target != 'null':
		targets.append(target)
        	print "New target listing is",' '.join(targets)
	print "Enter your targets or enter exit to move on"
	target = raw_input("Enter target name: ")
	print "This is your selected target: ",target
#not my python payload
def netcat(hostname, port, content):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((hostname, port))
	s.sendall(content)
	s.shutdown(socket.SHUT_WR)
	while 1:
		data = s.recv(1024)
		if data == "":
			break
 		print "Received:", data
#	print "Connection closed."
# Added data
	logfile = open("missle.log", "w")
	logfile.write(data)
	logfile.close()
#	s.close()
	
#now is my code again
port = input("Enter port number: ")
data = raw_input("Enter command/data to send: ")
for host in targets:
	print "Attempting to connect to ",host
	netcat(host, port, data)
