libname mydata '/folders/myfolders/mydata';

title1 'Selected Patients from Hosp Data Set';
title2 'Admitted in September of 2004';
title3 'Older than 83 years of age';
title4 '--------------------------';

proc print data=mydata.hosp noobs n='Total number of Observations:';
	id Subject;
	where (year(AdmitDate)) eq 2004 and
		  (month(AdmitDate)) eq 9 and
		  (yrdif(DOB, AdmitDate, 'Actual')) gt 83;
	var DOB AdmitDate DischrDate;
	label	DOB = 'Date of Birth'
			AdmitDate = 'Admission Date'
			DischrDate = 'Discharge Date';
run;