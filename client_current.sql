--
--���������� �� �������
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
-- contragentbranchid = 24057 AND -- ��� �����������
accountno = 26004010324057 AND -- ����� �������
currencyid = 980 --������ �������
;