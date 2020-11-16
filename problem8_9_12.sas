data prob12_while;
	interest = 0.0425;
	deposit = 1000;
	do while (deposit le 30000);
		year + 1;
		deposit = deposit + interest * deposit;
		output;
	end;
	format deposit dollar10.2;
run;

data prob12_until;
	interest = 0.0425;
	deposit = 1000;
	do until (deposit ge 30000);
		year + 1;
		deposit = deposit + interest * deposit;
		output;
	end;
	format deposit dollar10.2;
run;

title 'Prob 12 - While';

proc print data=prob12_while;
run;

title 'Prob 12 - Until';

proc print data=prob12_until;
run;