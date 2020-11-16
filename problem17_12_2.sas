libname mydata '/folders/myfolders/mydata';

proc format;
	value AgeGroup	low - < 41 = '40 and younger'
					41 - < 61 = '41 to 60'
					61 - high = '61 and older';
run;

title 'Problem 2';
proc freq data=mydata.bloodpressure;
	tables Age / nocum nopercent;
	format Age AgeGroup.;
run;