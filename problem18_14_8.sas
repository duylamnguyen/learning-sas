libname mydata '/folders/myfolders/mydata';

proc format;
	value $gender 'F' = 'Female'
					'M' = 'Male';
	value $scholarship 'N' = 'No'
						'Y' = 'Yes';
run;

title 'Demonstrating Row Percents';
proc tabulate data=mydata.college;
	class gender scholarship;
	table	(gender all),
			(scholarship all) * (rowpctn*f=3.);
	format gender $gender.
			scholarship $scholarship.;
	keylabel rowpctn='Percent';
run;