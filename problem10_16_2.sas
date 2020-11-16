libname mydata '/folders/myfolders/mydata';

data monday2002;
	set mydata.hosp (keep=AdmitDate DOB);
	day = weekday(AdmitDate);
	year = year(AdmitDate);
	age = round(yrdif(DOB, AdmitDate));
	if (day eq 2) and (year eq 2002) then output monday2002;
run;

title 'Listing of Monday2002';

proc print data=monday2002 (obs=10);
run;