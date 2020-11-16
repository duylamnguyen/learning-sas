data Scores_Comma;
	infile '/folders/myfolders/scores_comma.csv' dsd truncover;
	input Q1-Q3;
run;

title 'Problem 2';
proc print data=Scores_Comma noobs;
run;