libname mydata '/folders/myfolders/mydata';

proc transpose data=mydata.narrow prefix=S out=narrow (drop=_NAME_);
	by Subj;
	id Time;
	var Score;
run;