libname prob '/folders/myfolders/mydata/';

data prob.survey2018;
	infile datalines dlm='09'x;
	input	age
			gender			$
			(quest1-quest5)	($1.);
	datalines;
	23	M	15243
	30	F	11123
	42	M	23555
	48	F	55541
	55	F	42232
	62	F	33333
	68	M	44122
	;
run;