*
Program Name:
Purpose:
Programmer:
Date Written:
;

data School;
	input	age
			quiz:	$1.
			midterm
			final;
			
	if missing(age) then grade = .;
		else if age eq 12 then grade = 6;
		else if age eq 13 then grade = 8;
	
	if missing(quiz) then quizgrade = .;
		else if quiz eq 'A' then quizgrade = 95;
		else if quiz eq 'B' then quizgrade = 85;
		else if quiz eq 'C' then quizgrade = 75;
		else if quiz eq 'D' then quizgrade = 70;
		else if quiz eq 'F' then quizgrade = 65;
		
	coursegrade = 0.2*quizgrade + 0.3*midterm + 0.5*final; 

datalines;
12 A 92 95
12 B 88 88
13 C 78 75
13 A 92 93
12 F 55 62
13 B 88 82
;
run;

title 'Data set of School';

proc print data=School noobs;
run;