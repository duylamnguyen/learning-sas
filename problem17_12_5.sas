libname mydata '/folders/myfolders/mydata';

proc format;
	value RankGroup	low - < 71 = '70 and lower'
					71 - high = '71 and higher';
run;

title 'Problem 5';
proc freq data=mydata.college;
	tables Scholarship * ClassRank;
	format ClassRank RankGroup.;
run;