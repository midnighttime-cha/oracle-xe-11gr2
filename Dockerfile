FROM wnameless/oracle-xe-11g-r2

RUN cp $PWD/data/EXAMPLE.DMP /u01/app/oracle/product/11.2.0/xe/dpdump/EXAMPLE.DMP

EXPOSE 1521