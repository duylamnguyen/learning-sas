%let n = 10;

data Sqrt_Table;
	do n = 1 to &n;
		Sqrt_n = sqrt(n);
		output;
	end;
run;

title "Square Root Table from 1 to &n";
proc print data=Sqrt_Table noobs;
run;