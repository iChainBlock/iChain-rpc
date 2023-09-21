
# Use with caution: running this script will destroy all docker resources and start clean.

echo "Removing containers :" && if [ -n "$(docker container ls -aq)" ]; then docker container stop $(docker container ls -aq); docker container rm $(docker container ls -aq); fi; echo "Removing images :" && if [ -n "$(docker images -aq)" ]; then docker rmi -f $(docker images -aq); fi; echo "Removing volumes :" && if [ -n "$(docker volume ls -q)" ]; then docker volume rm $(docker volume ls -q); fi; echo "Removing networks :" && if [ -n "$(docker network ls | awk '{print $1" "$2}' | grep -v 'ID|bridge|host|none' | awk '{print $1}')" ]; then docker network rm $(docker network ls | awk '{print $1" "$2}' | grep -v 'ID|bridge|host|none' | awk '{print $1}'); fi; 
sudo service docker restart
