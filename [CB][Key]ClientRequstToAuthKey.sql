--------------------------------------------------
-- Запити на сертифікат що можуть бути авторизовані 
-- без підтвердження (3 дні просрочки)
---------------------------------------------------
ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

SELECT
       DISTINCT
       u.login AS "Користувач",
       ucr.statedate AS "Дата запиту", 
       uc.insertdate+365 AS "Дата закінчення"
FROM 
       usercertrequest ucr JOIN users u ON ucr.userid = u.id  JOIN usercert uc ON u.id = uc.userid 
WHERE
ucr.userid in (
            SELECT userid FROM usercert
            GROUP BY userid
            HAVING count(CACERTID) > 1
)
AND STATEDATE > to_date('01.04.2016', 'DD.MM.YYYY')
AND DESCRIPTION like '%(actionid=9)'
AND ucr.statedate BETWEEN uc.insertdate AND uc.insertdate+368;
