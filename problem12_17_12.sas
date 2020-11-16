libname mydata '/folders/myfolders/mydata';

data Errors;
	set mydata.errors;
	if findc(PartNumber, 'XD', 'i') then output Errors;
run;

title 'Listing of Errors Dataset';
proc print data=Errors;
run;