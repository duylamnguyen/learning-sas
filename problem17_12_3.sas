libname mydata '/folders/myfolders/mydata';

proc format;
	value CholGroup	low - < 201 = 'low to 200 (normal)'
					201 - high = '201 and higher (high)'
					. = 'Missing';
run;

title 'Problem 3 - MISSING';
proc freq data=mydata.blood;
	tables chol / nocum missing;
	format chol CholGroup.;
run;

title 'Problem 3 - without MISSING';
proc freq data=mydata.blood;
	tables chol / nocum;
	format chol CholGroup.;
run;