libname mydata '/folders/myfolders/mydata';

title 'Patien Age Groups';
proc report data=mydata.bloodpressure;
	column gender age age_group;
	define gender / display;
	define age / display;
	define age_group / computed 'Age Group';
	
	compute age_group / character length=5;
		if age <= 50 then age_group = '<= 50';
		else age_group = '> 50';
	endcomp;
run;