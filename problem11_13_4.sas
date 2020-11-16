libname mydata '/folders/myfolders/mydata';

data Evaluate;
	set mydata.psych;
	if n(of Ques1-Ques10) ge 7 then QuesA = mean(of Ques1-Ques10);
	*if n(of Score1-Score5) eq 5 then do;
		MinScore = min(of Score1-Score5);
		MaxScore = max(of Score1-Score5);
		SecondHighest = largest(2, of Score1-Score5);
	*end;
run;

title 'Listing of Evaluate Dataset';
proc print data=evaluate (keep= QuesA MinScore MaxScore SecondHighest) noobs;
run;