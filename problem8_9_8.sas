data logitplot;
	do p = 0 to 1 by 0.05;
		logit = log(p / (1 - p));
		output;
	end;
run;

title 'Logit Plot';

proc sgplot data=logitplot;
	series x=p y=logit;
run;