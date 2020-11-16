data prob21_11;
	infile '/folders/myfolders/three_per_line.txt';
	input	@1	(HR1-HR3)	(3. +6)
			@4	(SBP1-SBP3)	(3. +6)
			@7	(DBP1-DBP3) (3. +6);
run;

title 'Listing of PROB21_11';
proc print data=prob21_11;
run;