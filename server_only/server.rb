require 'socket'

server = TCPServer.new(8080)

loop do
  socket = server.accept
  p socket.gets
  socket.puts("HTTP/1.1 200\r\nContent-Type: text/html\r\n\r\n<h1>Yo</h1>")
  socket.close
end
