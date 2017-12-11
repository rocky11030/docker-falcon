#!/bin/bash
mysql -h 127.0.0.1 -u root -pNeunn@123 < /tmp/db_schema/1_uic-db-schema.sql 
mysql -h 127.0.0.1 -u root -pNeunn@123 < /tmp/db_schema/2_portal-db-schema.sql
mysql -h 127.0.0.1 -u root -pNeunn@123 < /tmp/db_schema/3_dashboard-db-schema.sql
mysql -h 127.0.0.1 -u root -pNeunn@123 < /tmp/db_schema/4_graph-db-schema.sql 
mysql -h 127.0.0.1 -u root -pNeunn@123 < /tmp/db_schema/5_alarms-db-schema.sql
rm -rf /tmp/db_schema
