# for windows
 docker login https://artifacts.flowable.com/
 docker compose up -d

 mvn package
 docker build -t bootdocker:1 .
 docker run -d --name bootdocker -p 8090:8090 bootdocker:1

# for macos/linux
#sudo service docker start
#sudo docker login https://artifacts.flowable.com/
#sudo docker compose up -d
#
#mvn package
#sudo docker build -t bootdocker:1 .
#sudo docker run -d --name bootdocker -p 8090:8090 bootdocker:1