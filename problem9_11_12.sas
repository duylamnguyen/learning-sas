libname mydata '/folders/myfolders/mydata';

data medical;
	set mydata.medical (keep= Patno VisitDate);
	follow_date = intnx('month', VisitDate, 5, 'sameday');
	format follow_date mmddyy10.;
run;

title 'List of Follow Date';

proc print data=medical;
run;