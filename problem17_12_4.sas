libname mydata '/folders/myfolders/mydata';

title 'Problem 4';
proc freq data=mydata.voter;
	tables Party * (Ques1-Ques4);
run;