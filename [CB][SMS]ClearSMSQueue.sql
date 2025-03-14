ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

--дивимось чергу
select * from maildeliveryqueue
where userid = 
(select id from users where login like '27830U02')
and trunc(initdate) > = to_date ('05.02.2025','dd.mm.yyyy')
order by id;

--виделяємо записи
delete from  maildeliveryqueue
where id in (1725747);

--застосовуємо зміни
commit;