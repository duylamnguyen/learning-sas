libname mydata '/folders/myfolders/mydata';

data hosp;
	set mydata.hosp (keep=AdmitDate);
	if missing(AdmitDate) then delete;
	where AdmitDate < '15Jul2002'd;
	format AdmitDate date9.;
run;

title 'Listing of HOSP Before 15Jul2002';

proc print data=hosp;
run;