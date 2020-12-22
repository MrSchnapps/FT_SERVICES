docker build -t <nom image> .

docker run -d -p 80:80 -p 443:443 <nom image>

docker exec -it <id container> <commande>

docker ps 

docker ps -a

docker rm -f <container id>

docker image ls

docker image rm


stopper nginx
ps -ef |grep nginx
kill -9 pid