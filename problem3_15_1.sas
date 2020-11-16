*Program name: problem3_15_1 stored in /folders/myfolders/
Purpose:
Programmer: Duy Nguyen
Date Written: 2020-10-17
;

data scores;
	infile '/folders/myfolders/Scores.txt';
	length gender $1;
	input gender $ english history math science;
	average = (english + history + math + science) / 4;
run;

title 'Scores';

proc print data=scores;
run;