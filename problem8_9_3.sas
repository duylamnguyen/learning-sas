data test;
	input	score1 - score3;
	counter + 1;
datalines;
90 88 92
75 76 88
88 82 91
72 68 70
;
run;

title 'Counter';

proc print data=test;
	id Counter;
run;