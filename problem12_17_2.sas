libname mydata '/folders/myfolders/mydata';

data mixed;
	set mydata.mixed;
	NameLow = lowcase(Name);
	NameProp = propcase(Name);
run;

title 'Listing of Mixed Dataset';
proc print data=mixed;
run;