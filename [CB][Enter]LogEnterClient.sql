--------------------------------------------------
-- Журнал доступу клієнта до системи КБ 
---------------------------------------------------

ALTER SESSION SET CURRENT_SCHEMA = IFOBS;


SELECT client.clientname AS "Назва",
       users.login AS "Логин",
       v_all_onlinestatus.startdate AS "Начало",
       v_all_onlinestatus.enddate AS "Окончание",
       v_all_onlinestatus.lAStaccessdate AS "Последний доступ",
       v_all_onlinestatus.ip AS "IP адрес",
       --v_all_onlinestatus.os AS "Операційна ситтема",
       v_all_onlinestatus.browser AS "Програма",
       --v_all_onlinestatus.host AS "Хост",
       v_all_onlinestatus.state AS "Состояние"/*,
       v_all_onlinestatus.plserver AS "Ńĺđâĺđ ďîäęëţ÷ĺíč˙" 
       client.clientname as "Клиент"*/
FROM ifobs.v_all_onlinestatus JOIN ifobs.users ON v_all_onlinestatus.userid = users.id 
                        JOIN ifobs.client ON users.clientid = client.id
WHERE userid IN (SELECT id FROM ifobs.users WHERE login /* Óęŕçŕňü ëîăčí */ LIKE 'MEDINVESTBUD%')
     AND --v_all_onlinestatus.lAStaccessdate > to_date('01.01.2013','DD.MM.YYYY')
     v_all_onlinestatus.lAStaccessdate BETWEEN to_date('01.10.2017','DD.MM.YYYY') AND to_date('01.04.2018', 'DD.MM.YYYY')
ORDER BY userid, lAStaccessdate;