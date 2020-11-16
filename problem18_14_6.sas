libname mydata '/folders/myfolders/mydata';

title 'Descriptive Statistics';
proc tabulate data=mydata.college;
	class gender;
	var gpa classrank;
	table (gpa classrank) * (n mean*f=8.1),
			gender all;
	keylabel n='Number'
			mean='Average';
	label ClassRank = 'Class Rank';
run;