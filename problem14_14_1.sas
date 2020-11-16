libname mydata '/folders/myfolders/mydata';

title 'Listing of Blood Dataset';
proc print data=mydata.blood (obs=10) noobs label;
	id Subj;
	var WBC RBC Chol;
	label	WBC = 'White Blood Cell'
			RBC = 'Red Blood Cell'
			Chol = 'Cholesterol';
run;