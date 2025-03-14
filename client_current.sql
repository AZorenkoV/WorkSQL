--
--Інформація по рахунку
--

ALTER SESSION SET CURRENT_SCHEMA = IFOBS;

SELECT
contragentbranchid,
descr,
accountno,
debet,
credit,
lastsynchronizationdate
FROM account WHERE 
-- contragentbranchid = 24057 AND -- код контрагента
accountno = 26004010324057 AND -- номер рахунку
currencyid = 980 --валюта рахунку
;