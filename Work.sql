ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

select * from user_tables;


SELECT
    rightid FROM IFOBS.right
WHERE
    NAME like '%легкий%';
    
select * 
FROM
userrights
WHERE
clientrightid IN (
    SELECT
            id FROM IFOBS.clientright
        WHERE
            rightid = (
            SELECT
            rightid FROM IFOBS.right
        WHERE
            NAME like '%легкий%'))
ORDER BY clientrightid;

select *
from currencyoperation;


