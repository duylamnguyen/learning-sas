libname mydata '/folders/myfolders/mydata';

data Errors;
	set mydata.errors;
	if anydigit(Name) then output Errors;
run;

title 'Listing of Errors Dataset';
proc print data=Errors;
run;