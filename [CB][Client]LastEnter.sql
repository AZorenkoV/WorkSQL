--------------------------------------------------
-- Коли було крайнє підключення по кієнту 
-- Враховуючі всіх користувачів клієнта
---------------------------------------------------


ALTER SESSION SET CURRENT_SCHEMA = IFOB;

SELECT DISTINCT result.nickname, cb.contragentbranchid, result.clientname, result.lastlogin FROM (
    SELECT c.nickname, cl.id, cl.clientname, c.lastlogin FROM (
        SELECT * FROM (
            SELECT ca.nickname, MAX(u.lastlogindate) AS lastlogin FROM users u JOIN (
                SELECT DISTINCT NICKNAME , DESCR , c.id FROM ACCOUNT a JOIN (
                    SELECT NICKNAME, CONTRAGENTBRANCHID, CLIENT.ID FROM CLIENT JOIN CONTRAGENTBRANCH ON CLIENT.ID = CONTRAGENTBRANCH.CLIENTID 
                    WHERE CLIENTSTATUSID = 0) c ON a.CONTRAGENTBRANCHID = c.CONTRAGENTBRANCHID
                WHERE toboid = 1 or toboid IS NULL) ca ON u.clientid = ca.id
        GROUP BY ca.nickname)
        WHERE lastlogin < to_date('01.01.2020','DD.MM.YYYY')) c JOIN client cl ON c.nickname = cl.nickname
) result JOIN contragentbranch cb ON result.id = cb.clientid
ORDER BY result.lastlogin, result.nickname;