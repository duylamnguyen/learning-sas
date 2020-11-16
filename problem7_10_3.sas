*
Program Name:
Purpose:
Stored in:
Programmer:
Date Written:
;

title 'Listing of Sales 1';

proc print data=Sales;
	where EmpID eq '9888' or EmpID eq '0177';
run;

title 'Listing of Sales 2';

proc print data=Sales;
	where EmpID in ('9888', '0177');
run;