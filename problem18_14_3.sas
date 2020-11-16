libname mydata '/folders/myfolders/mydata';

proc format;
	value $gender 'F' = 'Female'
				  'M' = 'Male';
	value $scholarship 'Y' = 'Yes'
						'N' = 'No';
	value $schoolsize 'L' = 'Large'
						'M' = 'Medium'
						'S' = 'Small';
run;

title 'Demographics from COLLEGE Data Set';
proc tabulate data=mydata.college;
	class gender scholarship schoolsize;
	table (gender ALL='Total') * (scholarship ALL='Total'), schoolsize ALL='Total';
	format gender $gender.
			scholarship $scholarship.
			schoolsize $schoolsize.;
	keylabel n=' ';
run;