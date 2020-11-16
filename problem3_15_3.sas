*
Program name:
Purpose
Programmer:
Date Written:
;

data company;
	infile '/folders/myfolders/company.txt' dsd dlm='$';
	input lastname $ empno $ salary;
run;

title 'Company';

proc print data=company;
run;