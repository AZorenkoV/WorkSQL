ALTER SESSION SET CURRENT_SCHEMA = IFOBS_GATE;

select count(*) from reestrmessages_abs where typeid=-2;
select * from reestrmessages_abs where typeid=-2;

select typeid, additionalid, count(*)
from reestrmessages_abs_arc where typeid=-2
group by typeid, additionalid ;

select * from all_tables where owner = 'IFOBS_GATE'order by 2;

select * from ifobs_gate_new_2406.reestrmessages_abs where additionalid=3;


select * from reestrmessages_manual_abs;
select * from reestrmessages_manual_ifobs;
select * from error_log where trunc(actiondate) >= trunc(sysdate-1) order by id;
select * from reestrmessages_abs;