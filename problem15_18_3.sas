libname mydata '/folders/myfolders/mydata';

title 'Demonstating a Compute Block';
proc report data=mydata.hosp;
	column Subject AdmitDate DOB Age;
	define Subject / display 'Subject No.' right;
	define AdmitDate / display 'Admission Date';
	define DOB / display noprint;
	define Age / computed 'Age at Admission';
	
	compute Age;
		Age = round(yrdif(DOB, AdmitDate, 'Actual'));
	endcomp;
run;