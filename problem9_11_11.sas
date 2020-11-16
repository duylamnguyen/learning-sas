libname mydata '/folders/myfolders/mydata';

data medical;
	set mydata.medical (keep=VisitDate);
	quarter = intck('qtr', '01Jan2006'd, VisitDate);
run;

title 'Problem 11';

proc print data=medical;
run;