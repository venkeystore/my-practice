
Dcconnect Troubleshoot steps:

Check platform marathon and see if all marathon web proxies are up.
the keyword we have to take and search in platform marathon
then you will get know mon-dcconnect service is running or not.
the take the ip from dcconnect and login into the node 
then perform the commands

[montana@node-44a84216bdb1 ~]$ docker ps | grep dcc
d902fbf92807        10.136.33.1:9003/montana/mon-dcconnect:relv1.1.5-b3-t250620-88705d0                 "/go/src/github.com/…"   5 months ago        Up 5 months         443/tcp, 4443/tcp, 8443/tcp, 9443/tcp, 0.0.0.0:31820->80/tcp   mesos-af459014-4810-4063-a727-cdc398c67f0f
[montana@node-44a84216bdb1 ~]$ docker exec -it d902fbf92807 bash
root@d902fbf92807:/etc/nginx# ifconfig eth4 | grep inet
          inet addr:140.223.56.7  Bcast:0.0.0.0  Mask:255.255.255.0
root@d902fbf92807:/etc/nginx# nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
