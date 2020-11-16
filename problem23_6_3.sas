libname mydata '/folders/myfolders/mydata';

proc transpose data=mydata.WIDE out=Wide;
	by Subj;
	var X1-X5;
run;