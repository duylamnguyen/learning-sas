data return;
	set mydata.medical (keep= Patno VisitDate);
	follow_date = intnx('month', VisitDate, 6, 'sameday');
	format VisitDate follow_date worddate.;
run;

title 'Return Visits for Medical Patients';

proc print data=return noobs;
run;