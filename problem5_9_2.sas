libname Learn '/folders/myfolders/mydata';

proc format;
	value	$Three	1, 2 = 'Disagreement'
					3 = 'No opinion'
					4, 5 = 'Agreement';
run;

title 'Question Freq Using the Three Format';

proc freq data=Learn.Survey;
	tables 	ques1-ques4;
	format	ques1-ques4 $Three.;
run;