libname myformat '/folders/myfolders/myformat';

proc format library=myformat.fmt595;
	value	YesNo	1 = 'Yes'
					0 = 'No';
	value	$YesNo	'Y' = 'Yes'
					'N' = 'No';
	value 	$Gender	'M' = 'Male'
					'F' = 'Female';
	value	Age20yr	low-<21	= 1
					21-<41 	= 2
					41-<61	= 3
					61-<81	= 4
					81-high	= 5;
run;

proc format library=myformat.fmt595 fmtlib;
run;