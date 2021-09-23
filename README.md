```bash
git clone https://github.com/wnameless/docker-oracle-xe-11g.git
cd docker-oracle-xe-11g
docker build -t wnameless/oracle-xe-11g .

docker run -d \
-v $PWD/app:/u01/app \
-p 1521:1521 \
-p 8080:8080 \
-e ORACLE_ALLOW_REMOTE=true \
-e ORACLE_DISABLE_ASYNCH_IO=true \
-e ORACLE_ENABLE_XDB=true \
--name oracle11g-xe-r2 \
--restart=always \
wnameless/oracle-xe-11g
```

# อ้างอิง
(https://github.com/wnameless/docker-oracle-xe-11g)[docker-oracle-xe-11g]
