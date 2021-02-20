docker build -t imgid .
docker run -d -p 80:80 -p 443:443 --name=ctnid imgid
docker exec -ti ctnid bash
