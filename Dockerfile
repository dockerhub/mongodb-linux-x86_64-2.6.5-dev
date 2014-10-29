FROM scratch
ADD lib/x86_64-linux-gnu/ /lib/x86_64-linux-gnu
ADD lib64/ /lib64
ADD usr/ /usr
ADD mongodb-linux-x86_64-2.6.5/bin/mongod /mongodb-linux-x86_64-2.6.5/bin/mongod
ADD data/ /data
ADD var/log /var/log
ADD tmp /tmp
EXPOSE 12345 
CMD ["/mongodb-linux-x86_64-2.6.5/bin/mongod", "--dbpath", "/data", "--port", "12345", "--logpath", "/var/log/mongodb.log"]

