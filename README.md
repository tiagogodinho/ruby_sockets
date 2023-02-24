# Sockets em Ruby

Um socket é um endpoint de comunicação entre dois programas rodando em uma rede. Sockets são usados para criar uma conexão entre um programa cliente e um programa servidor.

## Cliente

Nesse exemplo é um cliente que abre um socket para o site `webcode.me` na porta `80`, envia uma request HTTP, lê a resposta e fecha a conexão.

`ruby client_only/client.rb`

## Servidor

Nesse exemplo nós criamos um servidor TCP e iniciamos um loop infinito para receber as requests. Quando um request é recebida nós imprimimos no console e respondemos com `200` e fechamos a conexão.

`ruby server_only/server.rb`

Podemos usar o navegador ou o curl para ver o resultado.

## Cliente e servidor

É igual aos exmplos acima, mas o cliente agora chama o servidor que criamos.

`ruby client_server/server.rb`
`ruby client_server/client.rb`
