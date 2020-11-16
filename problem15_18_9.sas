libname mydata '/folders/myfolders/mydata';

title 'Report on the Survey Data Set';
proc report data=mydata.survey;
	column id gender age gender_new age_new salary (Ques1-Ques5) AveResponse;
	define id / display 'Subject ID' width=4;
	define age / display noprint;
	define age_new / computed 'Age as of 1/1/2006' right width=18;
	define gender / display noprint;
	define gender_new / computed 'Gender' width=6;
	define salary / display 'Yearly Salary' format=dollar9. width=10;
	define Ques1 / display noprint;
	define Ques2 / display noprint;
	define Ques3 / display noprint;
	define Ques4 / display noprint;
	define Ques5 / display noprint;
	define AveResponse / computed 'Average Response' width=8 format=3.1;
	
	compute age_new / character length=15;
		if age gt 50 then age_new = '51+';
		else if age ge 30 then age_new = '30 to 50';
		else if age lt 30 then age_new = 'Less than 30';
	endcomp;
	
	compute gender_new / character length=6;
		if gender eq 'F' then gender_new = 'Female';
		else gender_new = 'Male';
	endcomp;
	
	compute AveResponse;
		Q1 = input(Ques1, 1.);
		Q2 = input(Ques2, 1.);
		Q3 = input(Ques3, 1.);
		Q4 = input(Ques4, 1.);
		Q5 = input(Ques5, 1.);
		AveResponse = mean(of Q1-Q5);
	endcomp;

run;