ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

select login, pwd_regeneration_time from users where login = 'GRAAL1';

// OR


SELECT * FROM userpwdhistory where userid = (select id from users where login = 'GRAAL1') and userid = byuserid;
