data Scores;
	infile '/folders/myfolders/scores.txt';
	input	Age		$1.
			(Q1-Q4)	(:2.);
run;

title 'Problem 1';
proc print data=Scores;
run;