libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.narrow out=narrow;
	by Subj Time;
run;

data Streach;
	set narrow;
	by Subj Time;
	array S{5};
	retain S1-S5;
	if first.Subj then call missing(of S1-S3);
	S{Time} = Score;
	if last.Subj then output;
	keep Subj S1-S5;
run;

title 'Listing Streach';
proc print data=streach noobs;
run;