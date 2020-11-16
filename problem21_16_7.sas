data combined;
	if finished = 0 then infile '/folders/myfolders/file_a.txt' end=finished firstobs=2;
	else infile '/folders/myfolders/file_b.txt' firstobs=2;
	input x y z;
run;

title 'Problem 7';
proc print data=combined noobs;
run;