libname mydata '/folders/myfolders/mydata';

title 'Demographics from COLLEGE Data Set';
proc tabulate data=mydata.college;
	class SchoolSize Gender Scholarship;
	table SchoolSize ALL='Total', Gender Scholarship ALL='Total';
	keylabel n=' ';
run;