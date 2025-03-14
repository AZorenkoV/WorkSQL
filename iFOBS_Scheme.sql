ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

select pkg_ifobsgate.getmessagesinfo(number_array(147421,147068)) cur 
from dual;

select a.browser, count(*) as co from
(select userid, browser from
(select userid,browser,lastaccessdate, max(lastaccessdate) over (partition by userid) as maxlastaccessdate
from v_all_onlinestatus where browser like '%iFOBS Client%' and lastaccessdate>trunc(sysdate)-40)
where maxlastaccessdate=lastaccessdate) a
group by browser order by browser;

select * from users where login in ('24796U01');

select * from usertoken_log
where userid in (select id from users where login in ('24796U01'))
order by userid,logdate;

select * from usertoken
where userid in (select id from users where login in ('24796U01'));

select * from ifobssmsdelivery
where address like '%380505355556%'
and operationdate > = to_date ('21.04.2023','dd.mm.yyyy')
order by id;

select * from maildeliveryqueue
where userid = 
(select id from users where login like 'PESKOV9')
and trunc(initdate) > = to_date ('24.07.2023','dd.mm.yyyy')
order by id;
/
SELECT COUNT(*), t.stateid, m.mailtypeid, t.priority 
FROM taskqueue t, 
maildeliveryqueue m
WHERE t.tableid = m.id 
AND t.stateid IN (0, 1)
GROUP BY t.stateid, m.mailtypeid, t.priority 
ORDER BY stateid, priority;

delete from  maildeliveryqueue
where id in (1590873);
/
commit;
/
update maildeliveryqueue
set 


select * from  maildeliveryqueue
where id in (1550459,1550460,1550461,1550462,1550463);

select * from users where login like '26476U01';

select sd.*
from ifobssmsdelivery sd
inner join users u on u.id = sd.userid
where
u.login = '30184U01'
and trunc(lastmodifieddate) = to_date('21042023','ddmmyyyy') 
order by 1 desc;

select * from ifobssmsdelivery where id=849411;
select * from ifobssmsdeliverylog where ifobssmsdeliveryid=849411;

select * from additionalidentifycode where clientid =(select id from client where nickname='HSHOUSE');

--���� �볺���
select a.browser, count(*) as co from
(select userid, browser from
(select userid,browser,lastaccessdate, max(lastaccessdate) over (partition by userid) as maxlastaccessdate
from v_all_onlinestatus where browser like '%iFOBS Client%' and lastaccessdate>trunc(sysdate)-40)
where maxlastaccessdate=lastaccessdate) a
group by browser order by browser;

select * from ifobs_gate.reestrmessages_manual_abs order by id;

select sd.*
from ifobssmsdelivery sd
     inner join users u on u.id = sd.userid
where
  u.login = '30184U01'
  and trunc(lastmodifieddate) = to_date('21042023','ddmmyyyy')
order by 1 desc;

select * from document where id = 19445104;

select tasktype, count(id) cnt
from taskqueue t
where
tasktype like '%MORNING%'
and trunc(createdate) = to_date('04092023','ddmmyyyy')
group by tasktype
order by 2 desc;

select * 
from globalvar 
where 
vartypeid=268;

select *
from cbdocument
where
accountid = 18982402
and amount = 50000
and trunc(receivedate) = to_date('21042023','ddmmyyyy')
order by 1 desc;

select *
from cbdocument
where
accountid = (select id from account where accountno = 26002010330184)
and amount = 50000
order by 1 desc;

select *
from account
where
id=18982402
order by 1 desc;

select * from account where accountno = 26002010330184;

select ur.*, a.*
from vuseraccountright ur
     inner join account a on a.id= ur.accountid
     inner join users u on ur.userid = u.id
where  
  u.login = '30184U01'
  and ispresent=1
order by ur.accountid, ur.rightid ;

select * from releaseinfo order by id desc fetch first 20 rows only;

select * from patchinfo where 
UPPER(FILENAME) LIKE '%02_P_IFOBS_CONTRAGENT_REC%' OR 
UPPER(FILENAME) LIKE '%03_M_IFOBS_CONTRAGENT_REC%' OR 
UPPER(FILENAME) LIKE '%03_M_IFOBS_CREATE_OR_REPLACE_TYPE_CONTRAGENT_REC%' OR 
UPPER(FILENAME) LIKE '%05_M_IFOBS_BIRTHPLACE_151716_2160%' OR 
UPPER(FILENAME) LIKE '%06_M_IFOBS_BIRTHPLACE_151716_2160%' OR 
UPPER(FILENAME) LIKE '%07_M_IFOBS_BIRTHPLACE_151716_2180%' OR 
UPPER(FILENAME) LIKE '%08_M_IFOBS_BIRTHPLACE_151716_2190%' OR 
UPPER(FILENAME) LIKE '%09_M_IFOBS_BIRTHPLACE_151716_2210%' 
order by patchapplied;

select * from all_tables where owner = 'IFOBS' and table_name like 'CLI%';

select * from users;

select * from client where nickname in (
select 
*
--nickname 
from contragent where contragentbranchid in
(16,
80,
882,
926,
1248,
1447,
2702,
3067,
7159,
7467,
9060,
11714,
11842,
15401,
15422,
17505,
18560,
21655,
21836,
25570,
27170,
27269
));


select login from users where statusid = 0 and clientid in (
--select * from client where id in (
SELECT clientid FROM clientaccountright where accountid in (--;    
select id from account where contragentbranchid in 
(16,
80,
882,
926,
1248,
1447,
2702,
3067,
7159,
9060,
11714,
11842,
15401,
15422,
17505,
18560,
21655,
21836,
25570,
27170,
27269
)))
;

select * from all_tables where owner = 'IFOBS'order by 2;

SELECT * FROM clientaccountright;    

select * from client;

select * from contragent;

select * from userstatus;

select * from usercert where
userid in (select id from users where login = '19061U02')
order by insertdate desc;

select * from cs_product_info;

select * from onlinestatus o  where o.startdate between to_date('01.01.2024','dd.mm.yyyy') and to_date('10.03.2025','dd.mm.yyyy')
and userid  in (select id from  users s where login='KOVI2') order by id desc;
---
select * from account where contragentbranchid in (
select contragentbranchid from contragent where contragentbranchid in (select contragentbranchid from contragentbranch where clientid in (SELECT clientid FROM users where login like 'KOVI2'))) ;

select * from document where (OPERATIONID=2 or OPERATIONID= 3)
and ACCOUNTID in (9701,19510,34615) ;


