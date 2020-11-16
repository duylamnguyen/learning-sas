proc format;
	value	age	low-<30 = '0-30'
				30-<51 = '31-50'
				51-<71 = '51-70'
				71-high = '71+';
	value	$party	'D' = 'Democrat'
					'R' = 'Republican';
	value	$likert	'1' = 'Strongly Disagree'
					'2' = 'Disagree'
					'3' = 'No Opinion'
					'4' = 'Agree'
					'5' = 'Strongly Agree';
run;

data Voter;
	input age party : $1. (ques1-ques4) ($1. + 1);
	format	age		age.
		party	$party.
		ques1	$likert.
		ques2	$likert.
		ques3	$likert.
		ques4	$likert.;
	label	ques1 = 'The president is doing a good job'
			ques2 = 'Congress is doing a good job'
			ques3 = 'Taxes are too high'
			ques4 = 'Government should cut spending';
	datalines;
	23 D 1 1 2 2
	45 R 5 5 4 1
	67 D 2 4 3 3 
	39 R 4 4 4 4
	19 D 2 1 2 1
	75 D 3 3 2 3
	57 R 4 3 4 4
	;
run;

title 'Data Set SURVEY with Formatted Values';

proc print data=Voter;
	var age party ques1-ques4;
run;

title 'Question Freq';

proc freq data=Voter;
	tables ques1-ques4;
run;

title 'Data set Voter';

proc contents data=Voter varnum;
run;