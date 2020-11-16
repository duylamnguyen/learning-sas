data combined;
	if finished = 0 then infile '/folders/myfolders/xyz1.txt' end=finished;
	else infile '/folders/myfolders/xyz2.txt';
	input x y z;
run;

title 'Problem 8';
proc print data=combined noobs;
run;