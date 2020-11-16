data prob13_while;
	interest = 0.0425 / 4;
	do while (invest le 30000);
		year + 1;
		invest + 1000;
		do quarter = 1 to 4;
			invest + interest * invest;
			output;
		end;
	end;
	format invest dollar10.2;
run;

title 'Prob13 While';

proc print data=prob13_while;
run;

data prob13_until;
	do year = 1 to 999 until (amount ge 30000);
		amount + 1000;
		do quarter = 1 to 4;
			amount + amount * (0.0425/4);
		output;
		end;
	end;
	format amount dollar10.;
run;

title 'Prob13 Until';

proc print data=prob13_until;
run;