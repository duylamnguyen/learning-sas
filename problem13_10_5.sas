data passing;
	array pass_score{5} _temporary_
		(65, 70, 60, 62, 68);
	array score{5};
	input id : $3. Score1-Score5;
	NumberPassed = 0;
	do Test = 1 to 5;
		NumberPassed + (Score{Test} ge pass_score{Test});
	end;
	drop Test;
datalines;
001 90 88 92 95 90
002 64 64 77 72 71
003 68 69 80 75 70
004 88 77 66 77 67
;
run;

title 'Listing of Passing';
proc print data=Passing;
	id ID;
run;