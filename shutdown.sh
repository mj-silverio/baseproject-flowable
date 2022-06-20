# Windows
docker compose down --remove-orphans -v

docker stop $(docker ps -aqf "name=bootdocker")
docker rm $(docker ps -aqf "name=bootdocker")

# Macos/Linux
#sudo docker compose down --remove-orphans -v
#
#sudo docker stop $(sudo docker ps -aqf "name=bootdocker")
#sudo docker rm $(sudo docker ps -aqf "name=bootdocker")