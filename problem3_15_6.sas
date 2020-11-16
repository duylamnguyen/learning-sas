*
Program Name:
Purpose:
Programmer:
Date Written:
;

data bank;
	infile '/folders/myfolders/bankdata.txt';
	input	name	$	1-15
			acct	$	16-20
			balance		21-26
			rate		27-30;
	interest = balance * rate;
run;

title 'Bank';

proc print data=bank;
run;