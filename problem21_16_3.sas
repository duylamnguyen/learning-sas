data scores_column;
	infile '/folders/myfolders/scores_column.txt' truncover;
	length Score1 3 Score2 3 Score3 3;
	input	@1	Score1	2.
			@3	Score2	2.
			@5	Score3	2.;
run;

title 'Problem 3';
proc print data=scores_column noobs;
run;