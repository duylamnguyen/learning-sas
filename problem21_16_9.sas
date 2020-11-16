data combined;
	filename xyzfiles ('/folders/myfolders/xyz1.txt'
						'/folders/myfolders/xyz2.txt');
	infile xyzfiles;
	input x y z;
run;

title 'Problem 9';
proc print data=combined noobs;
run;