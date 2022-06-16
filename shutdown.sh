docker compose down --remove-orphans -v

docker stop $(docker ps -aqf "name=bootdocker")
docker rm $(docker ps -aqf "name=bootdocker")