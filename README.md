docker build -t docker.pkg.github.com/midnighttime-cha/oracle-xe-11gr2/oracle-xe-11g-r2 .

docker push docker.pkg.github.com/midnighttime-cha/oracle-xe-11gr2/oracle-xe-11g-r2

docker run -d \
-v $PWD/app:/u01/app \
-p 1521:1521 \
-e ORACLE_ALLOW_REMOTE=true \
-e ORACLE_DISABLE_ASYNCH_IO=true \
-e ORACLE_ENABLE_XDB=true \
--name oracle11g-xe-r2 \
--restart=always \
docker.pkg.github.com/midnighttime-cha/oracle-xe-11gr2/oracle-xe-11g-r2