libname mydata '/folders/myfolders/mydata';

proc sort data=mydata.demographic_id out=demographic_id;
	by ID;
run;

proc sort data=mydata.survey1 out= survey1;
	by Subj;
run;

data Demo_Sur;
	merge	demographic_id
			survey1(rename=(Subj = ID));
	by ID;
run;

title 'Listing of Demo_Sur Dataset';
proc print data=demo_sur;
run;