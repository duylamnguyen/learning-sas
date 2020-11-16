libname mydata '/folders/myfolders/mydata';

proc format;
	value	$gender	'F' = 'Female'
					'M' = 'Male';
	value	$scholarship	'N' = 'No'
							'Y' = 'Yes';
	value	classrank	low - < 71 = 'Low to 70'
						71 - high = '71 and higher';
run;

title 'Demographics from COLLEGE Data Set';
proc tabulate data=mydata.college;
	class Scholarship ClassRank Gender;
	table Scholarship all, ClassRank * (Gender all);
	format Scholarship $scholarship.
			ClassRank classrank.
			Gender $gender.;
	keylabel all='Total'
			n=' ';
run;