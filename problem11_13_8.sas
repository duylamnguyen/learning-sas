data Random;
	call streaminit(1234567);
	do i = 1 to 1000;
		RandomInteger = ceil(rand('uniform') * 5);
		output;
	end;
run;

title 'Freq Table of Random';
proc freq data=Random;
run;