libname mydata '/folders/myfolders/mydata';

title 'Problem 1';
proc freq data=mydata.blood;
	tables Gender BloodType Age / nocum nopercent;
run;