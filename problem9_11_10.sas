libname mydata '/folders/myfolders/mydata';

data hosp;
	set mydata.hosp (keep=AdmitDate);
	months_dec = intck('month', AdmitDate, '31Dec2007'd);
	months_today = intck('month', AdmitDate, today());
run;

title 'Listing hof HOSP Date';

proc print data=hosp (obs=20);
run;