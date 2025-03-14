ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

select a.browser, count(*) as co from
(select userid, browser from
(select userid,browser,lastaccessdate, max(lastaccessdate) over (partition by userid) as maxlastaccessdate
from v_all_onlinestatus where browser like '%iFOBS Client%' and lastaccessdate>trunc(sysdate)-40)
where maxlastaccessdate=lastaccessdate) a
group by browser order by browser;