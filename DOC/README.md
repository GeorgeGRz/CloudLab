 
# Information
We are going to run a Venus Unification Service on the Okeanos VM that uses a Server - Client model as a microservice. Namely, Venus provides the user with the ability to create virtual networks. With Venus we can access networks that connect our network along with the network of the developer and the end user.
As a Process, we firstly run our server, having created a Docker container that includes our microservice. Then we start the client and we create a ping request.
We have the following structure:


```
project
│   
└───network
│   │   run-client.sh
│   │
│   └─── client
|       | ifup_linux
|       | privatekey
|       | publickey  
|   |  
│   │
│   └───okeanos
│   │   
│   │
│   └─── network
│       │      
│       │
│       └─── okeanos
│           │          
│           │
│           └─── user
|                |    userEmail.USER
│           │    ifup_linux
│           │    privatekey
│           │    publickey
|           |    settings
│       │   run.yml
│       │   run.yml.sh
|       |   stop-all.sh
```

___run-client.sh___ : This is the command and variable assigning script that contain the logic that carries out our build steps concerning the client part.

___ifup_linux___ : This is a file that configures network interfaces based on interface definitions declaring the private and public keys and also other instructions as to how to connect our server with our client side.

___privatekey___ : Contains the private key of the container.

***publickey*** : Contains the public key of the vm.

***run.yml*** : Our text document that contains data that concern the linux kernel in order to start a service in our docker-compose, formatted using YAML. 

***run.yml.sh*** : It's a script that contains the docker compose command that defines services and runs the Docker containers.

***stop-all.sh*** : It's a script that contains the docker compose command that tears down all of the containers.

***settings*** : It's a JSON file that contains the public container and the port.

In the user folder we have the ***user\_email.USER*** file that contains the getting and setting of the configuration of the WireGuard tunnel interfaces.