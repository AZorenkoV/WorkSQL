ALTER SESSION SET CURRENT_SCHEMA = IFOBS;
--1.
select * from branch_log where changedate>=to_date('09.07.2021','dd.mm.yyyy')
order by actionid;
--2.
select * from ifobs_gate.reestrmessages_manual_abslog where changedate>=to_date('09.07.2021','dd.mm.yyyy')
order by actionid;
--3.
select id, receivedate, documentdate, stateid, version, rejectcomment 
from cbdocument where receivedate>=to_date('13.07.2021','dd.mm.yyyy')
order by id;

