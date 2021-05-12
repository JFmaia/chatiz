#Imagine que agora estamos em uma maquina virtual linux que só tem o dart instalado.
FROM google/dart
#Agora vou trabalhar em uma pasta especifica que eu vou chamar de "server"
WORKDIR /server
#Copiando common também
COPY . /common/common
#Copiando o meu codigo para dentro
COPY . /server/server   
#Executando dentro.
RUN dart pub get
#Compilando
RUN dart compile exe bin/server.dart -o bin/server
#Execução final.
ENTRYPOINT [ "bin/server" ]