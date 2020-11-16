libname mydata '/folders/myfolders/mydata';

proc format;
	value ClassRank	low - < 50 = 'Bottom Half'
					51 - < 75 = '3rd Quartile'
					75 - high = 'Top Quarter';
run;

title 'Problem 4';
proc means data=mydata.college n nmiss mean median min max maxdec=2;
	class ClassRank;
	format ClassRank ClassRank.;
	var GPA;
run;