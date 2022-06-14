# Running

## Running the webservice on the remote host
To start the service, you have to run: 
```
./run.yml.sh
```
## Connecting to the remote host
To start the docker container of the client, you have to run:
`./run-client.sh`
Connect to the docker container
`docker exec -it <docker-container-id> /bin/bash`
In order to setup all the wireguard interfaces, run:
```shell
cd /settingsclient/
sh ./ifup_linux
```