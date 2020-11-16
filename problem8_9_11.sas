data prob11;
	length cities $7.;
	do cities = 'Dallas', 'Houston';
		do hours = 1 to 24;
			input temp @;
			output;
		end;
	end;
datalines;
80 81 82 83 84 84 87 88 89 89
91 93 93 95 96 97 99 95 92 90 88
86 84 80 78 76 77 78
80 81 82 82 86
88 90 92 92 93 96 94 92 90
88 84 82 78 76 74
;
run;

title 'Problem 11';

proc print data=prob11;
run;