libname mydata '/folders/myfolders/mydata';

data blood;
	set mydata.blood (rename=(Subj = Subj_char));
	Subj = input(Subj_char, 8.);
	drop Subj_char;
run;

title 'First 5 Observations from Blood Data Set';
proc report data=blood (obs=5);
	column Subj WBC RBC;
	define Subj / display 'Subject Number';
	define WBC / display 'White Blood Cell';
	define RBC / display 'Red Blood Cell' format=8.2;
run;