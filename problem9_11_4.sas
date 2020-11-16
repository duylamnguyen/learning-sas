data hosp;
	set mydata.hosp;
	age_jan = int(yrdif(DOB, '01Jan2006'd));
	age_today = int(yrdif(DOB, today()));
run;

title 'Age of Hosp';

proc print data=work.hosp (obs=10);
run;