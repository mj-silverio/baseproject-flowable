# Instructions

Installers
----------
1. Install Docker 4.8.2 - 
```https://docs.docker.com/desktop/release-notes/```
2. Install Postgres 12 and pgAdmin 4 - 
```https://www.postgresql.org/download/```
3. Install Intellij IDEA Community Edition - 
```https://www.jetbrains.com/help/idea/installation-guide.html```
4. Install JDK 8 and add JAVA_HOME to environment path - 
```https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/downloads-list.html```
5. Install Maven and add MAVEN_HOME and M2_HOME to environment path - 
```https://www.baeldung.com/install-maven-on-windows-linux-mac```

Pre-requisites
--------------

1. Git clone the project.
2. Build the Intellij project.
3. Please vacant these ports:
    * Port ```8090``` is chosen for Spring Boot Application.
    * Port ```5432``` is chosen for Postgre Database.
    * Port ```8080``` is chosen for Flowable Engage.
    * Port ```8888``` is chosen for Flowable Design.
   
FOR WINDOWS: Open cmd as admin for Windows. 
Run ```netstat -ano | findstr {port-number}``` to find process number and
```taskkill /F /pid {process-id}```to end session

FOR MACOS/LINUX: 
Run ```sudo lsof -i tcp:{port-number}```
Run ```sudo kill -9 {process-id}```

4. Provide your ```flowable.license``` on ```config/license/``` directory.
5. Provide your ```docker-compose.yml``` on ```root``` directory.

Start project
-------------

1. Run ```sh deploy.sh```. Use credentials found in the Screenshot.
2. Check pgAdmin if ```FLOWABLE_TEST``` database is created.
Otherwise, manually create it and connect.
3. Check Docker if all containers are up then proceed to next step, else troubleshoot first.

We-chat adapter
-----------

4. Go to wechat api link and scan qr thru phone: 
```https://mp.weixin.qq.com/debug/cgi-bin/sandbox?t=sandbox/login```
5. Run ```ngrok http 8081```.
6. Copy the url generated and append ```/wechat-api/webhook/``` on the ngrok link text box:

ex.  ```https://feed-112-202-178-210.ap.ngrok.io/wechat-api/webhook/```

A configuration successful notification in green should appear.

7. Scan the Test number QR code, test a sample message.

Note: As of now, there is error: "This Official Account is temporarily unavailable. Please try again."

Proceed to next step.

Flowable web apps
-----------------

8. Access flowable design on: ```http://localhost:8888/flowable-design/#/login```.
9. Access flowable engage on: ```http://localhost:8080/flowable-engage/#/login```.
10. Search docker-compose.yml for username and password for design and engage.
```Use the keywords:
flowable.common.app.idm-admin.password=
flowable.common.app.idm-admin.user=
flowable.external-system.wechat.content.rest-username=
flowable.external-system.wechat.content.rest-password=
```

Use the credentials you found to login on both web apps.

11. Test any flowable project on your local machine. 

ex. Test on Postman/curl the endpoint: ```http://localhost:8090/hello-world/``` if it returns "Hello World".

12. If needed, restart the docker container that isn't properly up. Otherwise, you've successfully set up the base project.

Stop project
------------

1. Run ```sh shutdown.sh```.