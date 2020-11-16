libname mydata '/folders/myfolders/mydata';

data Long;
	set mydata.Wide;
	array myarr{10} X1-X5 Y1-Y5;
	
	do Time = 1 to 5;
		X = myarr{Time};
		Y = myarr{Time + 5};
		output;
 	end;
 	
 	keep Subj Time X Y;
run;

title 'Listing of Long';
proc print data=Long noobs;
run;

