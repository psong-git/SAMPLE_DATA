#!/bin/bash

DB_USER_ID=user0
DB_USER_PW=user0

sqlplus -s $DB_USER_ID/$DB_USER_PW << EOF
 
@create_table_demo.sql
@create_proc_demo.sql

exec ARK_DEMO_INSERT_ORDER(10, 1000);
 
exit
EOF
