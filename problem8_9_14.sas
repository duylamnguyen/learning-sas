data prob14_until;
	*integers = 1;
	*squares = integers ** 2;
	do until (squares gt 100);
		integers + 1;
		squares = integers ** 2;
		output;
	end;
run;

title 'prob14_until';

proc print data=prob14_until;
run;

data prob14_while;
	do while (squares le 100);
		integers + 1;
		squares = integers ** 2;
		output;
	end;
run;

title 'prob14_while';

proc print data=prob14_while;
run;