libname mydata '/folders/myfolders/mydata';

data Evaluate;
	set mydata.psych;
	if n(of Score1-Score5) gt 3 then ScoreAve = mean(largest(1, of Score1-Score5),
												   largest(2, of Score1-Score5),
												   largest(3, of Score1-Score5));
	if n(of Ques1-Ques10) ge 7 then QuesAve = mean(of Ques1-Ques10);
	Composit = ScoreAve + 10 * QuesAve;
run;

title 'Listing of Evaluate Dataset';
proc print data=evaluate;
run;