libname mydata '/folders/myfolders/mydata';

title 'Problem 7';
proc freq data=mydata.blood order=freq;
	tables BloodType / nocum;
run;