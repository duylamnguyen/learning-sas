libname mydata '/folders/myfolders/mydata';
libname myformat '/folders/myfolders/myformat';

proc format library=myformat.voterfmt;
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

options fmtsearch=(myformat.voterfmt);

data mydata.Voter;
	input age party : $1. (ques1-ques4) ($1. + 1);
	
	format	age			age.
			party		$party.
			ques1-ques4	$likert.;
			
	label 	age		=	'Age as of 1/1/2006'
			party	=	'Name of Party'
			ques1	=	'The governor is doing a good job'
			ques2	=	'The property tax should be lowered'
			ques3	=	'Guns should be banned'
			ques4	=	'The shool needs to be expanded';
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

title 'Data set Voters';

proc print data=mydata.Voter;
run;

title 'Format Definitions in the myformat lib';

proc format library=myformat.voterfmt fmtlib;
run;




