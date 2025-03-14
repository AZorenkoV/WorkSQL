ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

select * 
from globalvar 
where 
vartypeid=268;

update globalvar 
set varvalue=1 
where 
vartypeid=268;
/
commit;

select *
from ifobssmsdelivery
where
ifobssmstypeid = 19
and (lastmodifieddate) >= to_date('05092023 16:55','ddmmyyyy hh24:mi')
order by 1 desc;

select sd.*
from ifobssmsdelivery sd
inner join users u on u.id = sd.userid
where
u.login = 'SFGSVITOCH1'
and trunc(lastmodifieddate) = to_date('05092023','ddmmyyyy') 
order by 1 desc;
