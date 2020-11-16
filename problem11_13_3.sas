libname mydata '/folders/myfolders/mydata';

data Miss_Blood;
	set mydata.blood;
	if missing(wbc) then do;
		call missing(gender, rbc, chol);
	end;
run;

title 'Listing of Miss_Blood Dataset';
proc print data=Miss_Blood (keep= gender rbc chol);
run;