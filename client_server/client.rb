require 'socket'

socket = TCPSocket.new('localhost', 8080)
socket.write("GET / HTTP/1.0\r\n\r\n")
puts socket.read
socket.close
