libname mydata '/folders/myfolders/mydata';

title 'Demographics from COLLEGE Data Set';
proc tabulate data=mydata.college;
	class Gender Scholarship SchoolSize;
	table Gender Scholarship ALL, SchoolSize;
	keylabel n=' ';
run;