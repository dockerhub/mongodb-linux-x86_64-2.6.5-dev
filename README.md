nano mongo docker image
=========


This is minimilistic mongodb server for application dev/testing. This doesn't include any dump/stat tools.

  - 27.99 MB
  - x64 linux binary
  - no unnecessary service layer/init in docker image.
  - default starts on 12345 port.

How to use it:
--------------
- Install docker fist (if not already)
- run docker pull dockerhub/mongodb-linux-x86-64-2.6.5-dev
- docker ps
```
CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS              PORTS               NAMES
7d8edc9d3a67        mongo:latest        /mongodb-linux-x86_6   2 weeks ago         Up About an hour    12345/tcp
```
- run docker inspect <container id displayed from ps>
- look for "NetworkSettings"/"IPAddress" it should look like "172.17.0.5"
- now you can connect using mongo --host <ip> --post 12345
- try inserting document db.item.insert({"name":"mongo"})
- query using db.item.find().forEach(printjson)

