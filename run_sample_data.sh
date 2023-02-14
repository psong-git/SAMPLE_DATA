#!/bin/bash

DB_USER_ID=user0
DB_USER_PW=user0

sqlplus -s $DB_USER_ID/$DB_USER_PW << EOF

# @create_table_toss.sql
# @create_proc_toss.sql
# @init_data_toss.sql

@create_table_table20.sql
@create_proc_table20.sql

@create_table_demo.sql
@create_proc_demo.sql

exec FIXED_CASE(1, 10000);
exec INSERT_ORDER(5, 1000);
exec ARK_DEMO_INSERT_ORDER(10, 1000);

exit
EOF