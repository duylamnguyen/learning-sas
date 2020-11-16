data logn;
	do n = 1 to 20;
		logn_val = log(n);
		output;
	end;
run;

title 'Value of Log N';

proc print data=logn;
run;