libname mydata '/folders/myfolders/mydata';

data Survey2;
	set mydata.survey2;
	array myvars{5} Q1-Q5;
	array myvars2{5} Ques1-Ques5;
	do i = 1 to 5;
		myvars2{i} = myvars{i};
		myvars2{i} = 6 - myvars2{i};
	end;
	drop i;
run;

title 'Listing of Servey2';
proc print data=survey2 noobs;
	id ID;
run;