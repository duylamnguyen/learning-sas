libname mydata '/folders/myfolders/mydata';

data names_and_more;
	set mydata.names_and_more (keep=name);
	length last_name $ 15.;
	name = compbl(name);
	last_name = scan(name, 2, ' ');
run;

proc sort data=names_and_more;
	by last_name;
run;
	
title 'Listing of names and more';
proc print data=names_and_more;
run;