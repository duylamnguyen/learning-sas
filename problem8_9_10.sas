data prob10;
	do method = 'A', 'B', 'C';
		do subj = 1 to 10;
			input score @;
			output;
		end;
	end;
datalines;
250 255 256 300 244 268 301 322 256 333
267 275 256 320 250 340 345 290 280 300
350 350 340 290 377 401 380 310 299 399
;
run;

title 'Problem 10';

proc print data=prob10;
run;