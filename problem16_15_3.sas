libname mydata '/folders/myfolders/mydata';

proc format;
	value $SchoolSize_Group
		'S' = 'Small'
		'M' = 'Medium'
		'L' = 'Large';
run;

title 'Problem 3';
proc means data=mydata.college mean median;
	class SchoolSize;
	format SchoolSize $SchoolSize_Group.;
	var GPA ClassRank;
run;