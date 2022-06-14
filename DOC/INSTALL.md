 
# Install
Project includes an INSTALL shell script that uses ansible-playbook in order to move server files required to run the service to the remote host. Before running INSTALL, one has to add the Remote IP address below "[cloud]".

## Prerequisites
So preparation steps are as follows:
1. Install wireguard in both machines 
`sudo apt update && sudo apt install wireguard`
2. Generate encryption keys 
`wg genkey | tee privatekey | wg pubkey > publickey`

### Installing on Remote
After moving the appropriate files, you have to edit them in order to completely finish the installation.
1. Edit <b>ifup_linux</b>
wg set swarmlab0 listen-port 51820 private-key <b>Okeanos</b>/connect/privatekey
2. Edit run.yml at - /home/user/network/okeanos:/settings/connect

Where in both cases, you have to replace the existing path with your own, absolute path.

### Installing client
1. Edit <b>ifup_linux</b>
Line 3: Replace private key with your own(client) generated private key.
Line 8: Replace public key with remote machine public key.
Line 11: Enter the IP of the host machine along with the port where docker is running.
Line 24: Replace the existing IP with the IP that wireguard is going to assign you.

2. Edit run-client
Line 9: Replace the existing path with absolute path to the client files
