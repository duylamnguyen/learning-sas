libname mydata '/folders/myfolders/mydata';

data survey2;
	set mydata.survey2;
	length any5 $ 3.;
	array ques{5} Q1-Q5;
	any5 = 'No';
	do i = 1 to 5;
		if ques{i} = 5 then do;
			any5 = 'Yes';
			leave;
		end;
	end;
	drop i;
run;

title 'Listing of Survey2';
proc print data=survey2 noobs;
run;