libname mydata '/folders/myfolders/mydata';

proc format;
	value	$schoolsize	'L' = 'Large'
						'M' = 'Medium'
						'S' = 'Small';
run;

title 'More Descriptive Statistics';
proc tabulate data=mydata.college;
	class schoolsize;
	var gpa classrank;
	table schoolsize all,
		gpa * (median*f=3.1 min*f=3.1 max*f=3.1)
		classrank * (median*f=3. min*f=3. max*f=3.);
	format schoolsize $schoolsize.;
	keylabel n=' '
			min='Minium'
			max='Maxium'
			all='Total';
	label schoolsize = 'School Size'
			classrank = 'Class Rank';
run;