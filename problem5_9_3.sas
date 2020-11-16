data Colors;
	input Color : $1. @@;
datalines;
R R B G Y Y . . B G R B G Y P O O V V B
;
run;

proc print data=Colors;
run;

proc format;
	value $color	'R', 'B', 'G' = 'Group 1'
					'Y', 'O' = 'Group 2'
					' ' = 'Not Given'
					other = 'Group 3';
run;

title 'Freq Table Without Missing';

proc freq data=Colors;
	tables Color;
	format Color $color.;
run;

title 'Freq Table With Missing';

proc freq data=Colors;
	tables Color / nocum missing;
	format Color $color.;
run;