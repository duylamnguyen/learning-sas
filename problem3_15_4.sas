*
Program name:
Purpose:
Programmer:
Date Written:
;

filename company_txt '/folders/myfolders/company.txt';

data company;
	infile company_txt dsd dlm='$';
	input lastname $ empno $ salary;
run;

title 'Company';

proc print data=company;
run;