------------------------------------------------
--- Вибірка кількості документів по клієнт-банку
--- з розбивкою по годинно на протязі дня
------------------------------------------------

select '00:00 - 08:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 00:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 08:00'),'dd.mm.yyyy HH24:MI')
union
select '08:00 - 09:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 08:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 09:00'),'dd.mm.yyyy HH24:MI')
union
select '09:00 - 10:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 09:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 10:00'),'dd.mm.yyyy HH24:MI')
union
select '10:00 - 11:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 10:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 11:00'),'dd.mm.yyyy HH24:MI')
union
select '11:00 - 12:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 11:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 12:00'),'dd.mm.yyyy HH24:MI')
union
select '12:00 - 13:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 12:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 13:00'),'dd.mm.yyyy HH24:MI')
union
select '13:00 - 14:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 13:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 14:00'),'dd.mm.yyyy HH24:MI')
union
select '14:00 - 15:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 14:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 15:00'),'dd.mm.yyyy HH24:MI')
union
select '15:00 - 16:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 15:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 16:00'),'dd.mm.yyyy HH24:MI')
union
select '16:00 - 17:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 16:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 17:00'),'dd.mm.yyyy HH24:MI')
union
select '17:00 - 18:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 17:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 18:00'),'dd.mm.yyyy HH24:MI')
union
select '18:00 - 00:00' as "time", count(*) from cbdocument where receivedate 
                                                            between to_date (concat(to_char(sysdate , 'DD.mm.YYYY'),' 18:00'),'dd.mm.yyyy HH24:MI') 
                                                            and 
                                                                    to_date (concat(to_char(sysdate+1 , 'DD.mm.YYYY'),' 00:00'),'dd.mm.yyyy HH24:MI');


select count(*) from cbdocument where receivedate between to_char(sysdate-2, 'DD.mm.YYYY') and to_char(sysdate-1, 'DD.mm.YYYY');