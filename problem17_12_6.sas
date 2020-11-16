libname mydata '/folders/myfolders/mydata';

title 'Problem 6';
proc freq data=mydata.college;
	tables Gender * Scholarship * SchoolSize / nocol norow nopercent;
run;