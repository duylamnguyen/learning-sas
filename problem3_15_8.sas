*
Program:
Purpose:
Programmer:
Date Written:
;

data bank;
	infile '/folders/myfolders/bankdata.txt';
	input	@1	name	$15.
			@16	acct	$5.
			@21 balance	6.2
			@27	rate	4.2;
	interest = balance * rate;
run;

title 'Bank';

proc print data=bank;
run;