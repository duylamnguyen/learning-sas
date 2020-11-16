libname mydata '/folders/myfolders/mydata';

data gym;
	set mydata.gym;
run;

proc means data=gym noprint;
	var Fee;
	output	out = Means(keep=Fee_Mean)
			mean = / autoname;
run;

data Percent;
	set mydata.gym;
	if _n_ = 1 then set Means;
	CostPercent = Fee / Fee_Mean;
	format CostPercent percent8.;
run;

title 'Listing of Percent Dataset';
proc print data=percent;
run;