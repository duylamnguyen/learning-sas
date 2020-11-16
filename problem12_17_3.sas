libname mydata '/folders/myfolders/mydata';

data names_and_more;
	set mydata.names_and_more;
	Name = compbl(Name);
	Phone = compress(Phone,,'kd');
run;

title 'Listing of Names And More Dataset';
proc print data=names_and_more;
run;