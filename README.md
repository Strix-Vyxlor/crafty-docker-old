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

```
podman run \
    --detach \
    --volume crafty:/var/opt/minecraft/crafty \
    -p 8443:8443 \
    -p 8123:8123 \
    -p 25565:25565 \
    -e TZ=Etc/Utc \
    ghcr.io/strix-vyxlor/crafty-docker:main
```

find files with ```podman volume inspect crafty```;
(for docker replace podman with docker)
