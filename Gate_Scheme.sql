ALTER SESSION SET CURRENT_SCHEMA = IFOBS_GATE;

--1
SELECT * FROM reestrmessages_manual_abs;

--2
SELECT * FROM reestrmessages_manual_ifobs;

--3
select * from error_log where trunc(actiondate) >= trunc(sysdate-1);

--4
select * from reestrmessages_abs where typeid=41;

select * from ifobs_gate.reestrmessages_manual_abs order by id;

select * from entityproperties_abs order by typeid;