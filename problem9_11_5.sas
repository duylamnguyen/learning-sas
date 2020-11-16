data freq_date;
	set mydata.hosp(keep=AdmitDate);
	day = weekday(AdmitDate);
	month = month(AdmitDate);
	year = year(AdmitDate);
run;

proc format;
	value	days	1='Sun'
					2='Mon'
					3='Tue'
					4='Wed'
					5='Thu'
					6='Fri'
					7='Sat';
					
	value	months	1='Jan'
					2='Feb'
					3='Mar'
					4='Apr'
					5='May'
					6='Jun'
					7='Jul'
					8='Aug'
					9='Sep'
			   		10='Oct'
			   		11='Nov'
			   		12='Dec';
run;

title 'Frequencies for Hospital Admissions';

proc freq data=freq_date;
	tables 	day month year / nocum nopercent;
	format	day		days.
			month	months.;
run;