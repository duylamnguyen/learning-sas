data Fake;
	length gender $6.; 
	call streaminit(1234567);
	do i = 1 to 100;
		subj + 1;
		if rand('uniform') < 0.6 then gender = 'Male';
			else gender = 'Female';
		age = rand('integer', 10, 50);
		output;
	end;
run;

title 'Freq of Fake Dataset';
proc freq data=fake;
	tables gender age;
run;