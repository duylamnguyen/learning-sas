libname mydata '/folders/myfolders/mydata';

proc means data=mydata.college noprint nway;
	class SchoolSize;
	var ClassRank GPA;
	output	out=Class_Summary
			n=
			mean=
			median= / autoname;
run;

title 'Class Summary';
proc print data=Class_Summary noobs;
run;