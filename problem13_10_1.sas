libname mydata '/folders/myfolders/mydata';

data Survey1;
	set mydata.survey1;
	array myvars{5} Q1-Q5;
	array myvars2{5} $ 2 Ques1-Ques5;
	do i = 1 to 5;
		myvars2{i} = myvars{i};
		myvars2{i} = translate(myvars2{i}, '54321', '12345');
	end;
	drop i;
run;

title 'Listing of Survey1 Dataset';
proc print data=Survey1 noobs;
	id Subj;
run;