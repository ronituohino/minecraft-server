# minecraft-server

This is a dockerized modded (Forge) Minecraft (1.18.2) server with some mods
ready to go.

### Running the server

Create a directory called `world` on your machine in this folder.

Then run the container with:  
`docker run -p 127.0.0.1:25565:25565 -v "$(pwd)/world:/usr/src/app/world" minecraft-server`

NOTE: THE SERVER STARTS BUT IT HAS NOT BEEN TESTED WITH AN ACTUAL CLIENT
