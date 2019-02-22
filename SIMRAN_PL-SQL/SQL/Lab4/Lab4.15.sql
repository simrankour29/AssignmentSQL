Create table Accoutnmaster(customerid number(5),Accountnumber number(10) primary key(acno),accounttype char(3),ledgerbalance number(10) Not Null);
Create sequence seq_ano
		MINVALUE 101
		MAXVALUE 10000
		START WITH 101
		INCREMENT BY 1
		CACHE 101;