data Read_2_to_5;
	infile '/folders/myfolders/month.txt' firstobs=2 obs=5;
	input	@1	Month		$3.
			@5	MonthTotal	4.;
run;

title 'Problem 6';
proc print data=Read_2_to_5 noobs;
run;