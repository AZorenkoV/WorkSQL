------------------------------------
-- Список користувачив з зазначенням 
-- наявності токена та права підпису
------------------------------------

select distinct
    clientid.clientname "Клієнт",
    u.login "Логін",
    case when
        r.userid IS NULL then 'ні'
        else 'так'
    end "Право підпису",
    case when 
        ut.id IS NULL then 'ні'
        else 'так'
    end "Токен", 
    clientid.toboid "ТОБО"
from 
    users u 
join 
    (select
        c.clientname as clientname,
        c.id as client_id,
        tobo_account.id as account_id,
        tobo_account.toboid as toboid
    from 
        client c 
    join 
        contragentbranch cb 
            on c.id = cb.clientid 
    join 
        (select distinct a.contragentbranchid as cbid, id, toboid from account a
        where a.toboid IN (
        ------------------------
        ----- По яких ТОБО -----
        ------------------------
                    101, 103, 107, 112, 118
            )) tobo_account 
            on cb.contragentbranchid = tobo_account.cbid) clientid 
        on u.clientid = clientid.client_id
left join 
    usertoken ut 
        on u.id = ut.userid
left join 
    (SELECT * FROM CLIENTRIGHT JOIN USERRIGHTS ON CLIENTRIGHT.ID = USERRIGHTS.CLIENTRIGHTID WHERE RIGHTID in ( 8, 9, 10)) r 
        on u.id = r.userid
ORDER BY 1;