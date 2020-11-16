libname mydata '/folders/myfolders/mydata';

proc means data=mydata.fitness noprint;
	var TimeMile RestPulse MaxPulse;
	output	out=fitness
			mean=
			/ autoname;
run;

data _null_;
	set fitness;
	call symputx('P_TimeMile', TimeMile_Mean);
	call symputx('P_RestPulse', RestPulse_Mean);
	call symputx('P_MaxPulse', MaxPulse_Mean);
run;

data New;
	set mydata.fitness (obs=5);
	Per_TimeMile = TimeMile / &P_TimeMile;
	Per_RestPulse = RestPulse / &P_RestPulse;
	Per_MaxPulse = MaxPulse / &P_MaxPulse;
	format Per_TimeMile Per_RestPulse Per_MaxPulse percent8.;
run;

proc print data=New;
run;

