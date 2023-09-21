#!/bin/bash
# To use this, first enable admin in http options in the config file.
curl -X POST --data '{"jsonrpc":"2.0","method":"admin_nodeInfo","params":[],"id":1}' http://127.0.0.1:22000 -H "Content-Type: application/json"
