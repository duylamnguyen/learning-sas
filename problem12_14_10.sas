libname mydata '/folders/myfolders/mydata';

data Errors;
	set mydata.Errors;
	where notdigit(trim(Subj)) or verify(trim(PartNumber), '0123456789LS');
run;

title 'Listing of Errors Dataset';
proc print data=Errors;
run;