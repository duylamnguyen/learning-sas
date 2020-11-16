libname mydata '/folders/myfolders/mydata';

title 'Hypertensive Patients';
proc report data=mydata.bloodpressure;
	column gender sbp dbp hypertensive;
	define sbp / display;
	define dbp / display;
	define hypertensive / computed;
	
	compute hypertensive / character length=3;
		if gender eq 'F' then do;
			if sbp gt 138 or dbp gt 88 then hypertensive = 'Yes';
			else hypertensive = 'No';
		end;
		else if gender eq 'M' then do;
			if sbp gt 140 or dbp gt 90 then hypertensive = 'Yes';
			else hypertensive = 'No';
		end;
	endcomp;
run;