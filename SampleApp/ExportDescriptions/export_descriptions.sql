set echo off 
set pagesize 0
set termout off
set arraysize 5000
set linesize 4000
set trimspool on
set verify off
set feedback off

spool &2

select distinct dsc.title
from concept$ con
inner join concept_description_map$ cdm
    on con.concept$_code = cdm.concept$_code
inner join description$ dsc
    on cdm.description_code = dsc.description$_code
where con.domain_code = &1;

spool off
exit;