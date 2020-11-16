libname prob '/folders/myfolders/mydata';

title 'Mean of Age';

proc means data=prob.survey2018;
	var age;
run;