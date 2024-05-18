# Crafty docker

Run crafty controller in docker.

it's a fedora 39 based image automaticaly running crafty.

## how to use

Run with container engine of your choice.
Map the folowing ports and volumes.

- 8443: for web ui.
- 8123: hell i dont know why, but the docs sead so.
- ports for minecraft: 25565 java and 19132 bedrock
- TZ: the timezone for the server
- /var/opt/minecraft/crafty: here is where he configs live
