libname mydata '/folders/myfolders/mydata';

data freq_date;
	set mydata.medical (keep=VisitDate);
	day = weekday(VisitDate);
	month = month(VisitDate);
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

title 'Frequencies of Medical VisitDate';

proc freq data=freq_date;
	tables 	day month / nocum nopercent;
	format	day		days.
			month	months.;
run;