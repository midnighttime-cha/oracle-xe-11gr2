docker run -d \
-v $PWD/dpdump:/u01/app/oracle/admin/XE/dpdump \
-p 1521:1521 \
-e ORACLE_ALLOW_REMOTE=true \
-e ORACLE_DISABLE_ASYNCH_IO=true \
-e ORACLE_ENABLE_XDB=true \
--name oracle11g-xe-r2 \
--restart=always \
oracle-11g-r2