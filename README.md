# iChain Blockchain - RPC Reader Node

This is an easy to use guide to setup iChain RPC node.
Requirements are `Docker and Docker-Compose` which setup instructions are provided as script files for Ubuntu 22.04 and 20.04. 
Other distributions also work as long as docker and compose are present.

### Clone this repository:

```
git clone https://github.com/iChainBlock/ichain-rpc.git

```
### Change directory to the downloaded folder:

```
cd ichain-rpc

```

### If necessary, setup Docker and docker-compose:
If you are using Ubuntu 22.04, run the following command which will do all the needed work:
If you are using Ubuntu 20.04 run `pre-setup2004.sh` instead

```
./pre-setup2204.sh

```

### Run docker-compose to bring up the node container:
Use the following command with the -d option to detach the container. This way it will keep running even if you close the terminal:
```
docker-compose up -d

```

To check that the container is running, use:

```json
docker ps
```

This will display the running container. 

## Checking setup:
To test if the node is working:
1. Paste your server's IP with port 22000 in a web browser: http://127.0.0.1:22000 
   If a blank white page is displayed, your node is working fine. Else, you'll get an error. 
2. In MetaMask network settings, place the address: http://your-ip:22000 for the RPC URL. 
   If you connect to the network, it means you are set. But you may need to wait for synchronization to complete. 
   During synchronization (few minutes or so) your wallet balance will not reflect the correct value.

## Used ports:
 - 22000: http RPC. TCP
 - 32000: WS RPC. TCP
 - 30303: blockchain P2P synchronization port. TCP/UDP

## Other tools:
In the tools folder you can find useful tools: 
 * logs.sh: to display the running container's logs `./logs.sh`
 * johnwick.sh: a tool to destroy all non-running docker resources `./johnwick.sh`
 * enode.sh: to view the enode id. Note that you must add the "admin" option to docker compose entry http options to use it `./enode.sh`
 
## iChain Blockchain useful information:
```
Mainnet RPC URL: https://rpc.ichainscan.com
Mainnet Block Explorer: https://ichainscan.com
---------------------------------------------------------------
Testnet RPC URL: https://istanbul.ichainscan.com
Testnet Block Explorer: https://test.ichainscan.com
```

