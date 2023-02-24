require 'socket'

socket = TCPSocket.new('webcode.me', 80)
socket.write("GET / HTTP/1.0\r\n\r\n")
puts socket.read
socket.close
